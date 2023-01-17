require "base64"
require "excon"
require "json"
require_relative "./mpesa_time"
require_relative "./auth"

#important variables such as pass_key and pass_secret should not be stored in variables as I have done


def mpesa_pay(phone_number, amount=1)

    t = mpesa_time
    pass_key = "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919"
    paybill = 174379

    data = {
        "BusinessShortCode": paybill,
        "Password": "",
        "Timestamp": t,
        "TransactionType": "CustomerPayBillOnline",
        "Amount": amount,
        "PartyA": phone_number.to_i,
        "PartyB": paybill,
        "PhoneNumber": phone_number.to_i,
        "CallBackURL": "https://mydomain.com/path",
        "AccountReference": "To Your Door Food Delivery Services",
        "TransactionDesc": "Payment of Food Order" 
    }

    url = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest"
    password  = Base64.strict_encode64("#{paybill}#{pass_key}#{t}")
    token = access_token

    data[:Password] = password

    # puts data

    response = Excon.post(url,:body=>JSON.generate(data), headers:{'Content-Type': 'application/json', "Authorization": "Bearer #{token}"})


    puts response.status
    return response.body


end


