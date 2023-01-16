require "base64"
require "excon"
require "json"

def access_token
   begin
    consumer_key = "BAVBEqxeKnZ1tHlVcuefHV6o7fb4FsEh"
    consumer_secret = "Yjx6dldG3nOYtCWW"

    enc = Base64.strict_encode64("#{consumer_key}:#{consumer_secret}")

    # puts enc
    # puts "QkFWQkVxeGVLbloxdEhsVmN1ZWZIVjZvN2ZiNEZzRWg6WWp4NmRsZEczbk9ZdENXVw=="

    url = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"
    response = Excon.get(url, :headers =>{"Authorization": "Basic #{enc}"})

    # puts response.body
    # puts response.status
    data = JSON.parse(response.body)
    return data['access_token']
   rescue(e)
    return nil
   end

end

# puts access_token 