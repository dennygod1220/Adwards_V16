'use strict'

//node-shcedule排程module
const schedule = use('node-schedule');

const gestmodel = use('App/Models/Guestinfo')
const Database = use('Database')

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
        // var j = schedule.scheduleJob('20 * * * * *', async function () {
            //取得未審核狀態所有人
            var unaudited_guest = await Database.select('id', 'guest_invoice').from('guestinfos').where('status', '未審核')
            console.log(unaudited_guest);
            var arr1 = [];
            for(var i=0;i<unaudited_guest.length;i++){
                arr1[i] = await Database.select('invoice_status').from('adonis_invoices').where('invoice_num',unaudited_guest[i].guest_invoice)
                if(arr1[i] == ""){
                    console.log(i)
                    //客戶狀態改為不符合
                }
                //客人發票為未審核且與他相同的發票號碼狀態為未兌換
                else if(arr1[i].invoice_status == 1){
                    //發送簡訊
                    //將此客戶狀態改為已發送
                    //發票狀態改為2
                }
                //客人發票為未審核且與她相同的發票號碼狀態為已兌換
                else if(arr1[i].invoice_status == 2){
                    
                }
            }
        // });
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
