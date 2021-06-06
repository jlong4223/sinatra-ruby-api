require 'sinatra'

get "/" do
    {"msg": "Hello Sinatra", "status": 200}.to_json
end

get "/ruby/:type" do
    {"ruby": params["type"], query: params["rails, sinatra"]}.to_json
end

get "/route/:param" do
    {"The param you provided": params["param"], query: params["query"]}.to_json
end
