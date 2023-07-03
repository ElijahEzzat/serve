var paypal = require('paypal-rest-sdk');
var express = require('express');
var app = express();

var bodyParser = require('body-parser');
app.use(
    bodyParser.urlencoded({
        extended:false
    })
);
app.use(bodyParser.json())

var amount=77;

paypal.configure({
    'mode': 'sandbox',
    'client_id': 'AZsCOnyi-brcV_SNGr65XAwY0XW0fdDn15jEz16kEqjrwqE1SRICbgGU0MZZSxVNEsAoxhH1C6qPLu_3',
    'client_secret': 'EGxgAW9hPW40glmv9b7dG6WOvGAppuXNuPRixLu-BOc16rxGVBmewGER72drwiYGc6XsVHJMZj2IK29N'
})



app.post('/pay',(req,res)=>
{
    console.log(req.body);
    amount = req.body.price;


    var create_payment_json = {
        "intent": "sale",
        "payer": {
            "payment_method": "paypal"
        },
        "redirect_urls": {
            "return_url": "http://192.168.1.4:8000/success",
            "cancel_url": "http://cancel.url"
        },
        "transactions": [{
            "item_list": {
                "items": [{
                    "name": "item",
                    "sku": "item",
                    "price": amount,
                    "currency": "USD",
                    "quantity": 1
                }]
            },
            "amount": {
                "currency": "USD",
                "total": amount
            },
            "description": "This is the payment description."
        }]
    };
    
    
    paypal.payment.create(create_payment_json, (error, payment) => {
        if (error) {
            throw error;
        } else {
            console.log("Create Payment Response");
            console.log(payment);
 
            for(let i=0; i<payment.links.length; i++)
            {
                if(payment.links[i].rel=="approval_url")
                {
                    res.redirect(payment.links[i].href);
                }
            }
        }
    });
}
);

app.get('/success',(req,res)=>
{
    var execute_payment_json = {
        "payer_id": req.query.PayerID,
        "transactions": [{
            "amount": {
                "currency": "USD",
                "total": amount
            }
        }]
    };
    
    var paymentId = req.query.paymentId;
    
    paypal.payment.execute(paymentId, execute_payment_json,  (error, payment)=> {
        if (error) {
            console.log(error.response);
            throw error;
        } else {
            console.log("Get Payment Response");
            console.log(JSON.stringify(payment));
            res.send('done');
            
        }
    });

});

//run server
app.listen(8000,'192.168.1.4', (req,res)=>
{
    console.log('server started');
});