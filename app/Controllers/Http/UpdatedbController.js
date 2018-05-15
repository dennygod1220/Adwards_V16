'use strict'

//node-shcedule排程module
const schedule = use('node-schedule');

const req = use('request');
const utf8 = use('utf8');
const moment2 = use('moment');
const gestmodel = use('App/Models/Guestinfo')
const Database = use('Database')
const Awards = use('App/Models/AdonisInvoice')

class UpdatedbController {
    async index({
        request,
        response,
        session,
        view
    }) {

        return view.render('updatedb')
    }
    async start({params}) {
        var j = schedule.scheduleJob('50 * * * * *', async function () {
            console.log("batch running")
            //取得未審核狀態所有人
            var unaudited_guest = await Database.select('id', 'guest_invoice','guest_name').from('guestinfos').whereNot('guest_size','其他尺寸').andWhere('status', '未審核')
            // console.log(unaudited_guest);
            var arr1 = [];

            for(var i=0;i<unaudited_guest.length;i++){
                arr1[i] = await Database.select('id','invoice_status').from('adonis_invoices').where('invoice_num',unaudited_guest[i].guest_invoice)
                // console.log(arr1[i])
                if(arr1[i] == ""){
                    //客戶狀態改為不符合
                    const gu = await gestmodel.find(unaudited_guest[i].id);
                    gu.status = "不符合";
                    await gu.save();
                }
                //客人發票為未審核且與他相同的發票號碼狀態為未兌換
                else if(arr1[i][0].invoice_status == 1){
                    const gu = await gestmodel.find(unaudited_guest[i].id);
                    const inv = await Awards.find(arr1[i][0].id);
                    //發送簡訊
                    const gu_name = gu.toJSON().guest_name;s
                    const phone = gu.toJSON().cell_phone;
                    const date2 = moment2(gu.toJSON().date).format("YYYYMMDD");
                    const validatornum = gu.toJSON().validator_num;
                    const org_msg = "奧黛莉提醒:"+gu_name;
                    const msg = utf8.encode(gu_name);
                    //預約前一天發送簡訊
                    const date = moment2(moment2(date2).subtract(1,'days')).format("YYYYMMDD");
                    console.log(date);
                    req("http://api.message.net.tw/send.php?id=0905273575&password=C27198500&tel="+phone+";&mtype=G&encoding=utf8&msg=" + msg, function (error, response, body) {
                        console.log(body);
                    });
                    req("http://api.message.net.tw/send.php?id=0905273575&password=C27198500&tel="+phone+";&mtype=G&encoding=utf8&msg=" + msg+"&sdate="+date+"110000", function (error, response, body) {
                        console.log(body);
                    });
                    //將此客戶狀態改為已發送
                    gu.status = "已發送";
                    //發票狀態改為2
                    inv.invoice_status = 2;

                    await gu.save();
                    await inv.save();
                }
                //客人發票為未審核且與她相同的發票號碼狀態為已兌換
                else if(arr1[i][0].invoice_status == 2){
                    const gu = await gestmodel.find(unaudited_guest[i].id);
                    gu.status = "發票重覆";
                    await gu.save();
                }

            }
        });
    }

    // async test(){

    //  var test1 = setInterval(this.testsql,1000);
    //  console.log(test1);
    // }
    // testsql(){

    //     console.log("測試測試測試")
    // }
}

module.exports = UpdatedbController
