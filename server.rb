require 'sinatra'
require 'faker'

get "/" do
    {
        "msg": "Hello Sinatra", 
        "status": 200,
        "created_by": "Jared Long"
    }.to_json
end

get "/ruby/:type" do
    {"ruby": params["type"], "frameworks": "rails, sinatra"}.to_json
end

get "/route/:param" do
    {"The param you provided": params["param"], query: params["query"]}.to_json
end

get "/minecraft/biomes" do
    {
        "biome": Faker::Games::Minecraft.biome, 
        "biome2": Faker::Games::Minecraft.biome,
        "biome3": Faker::Games::Minecraft.biome,
        "biome4": Faker::Games::Minecraft.biome,
        "biome5": Faker::Games::Minecraft.biome,
        "biome6": Faker::Games::Minecraft.biome,
    }.to_json
end