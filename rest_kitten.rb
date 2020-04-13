require 'rubygems'
require 'sinatra'

get '/' do
    array_kittens = []
    50.times do |i|
        width = rand(1..20) * 100
        height = rand(1..20) * 100
        kitten = {}
        kitten[:width] = width
        kitten[:height] = height
        kitten[:img_path] = "http://placekitten.com/#{width}/#{height}"
        array_kittens.push(kitten)
    end
    array_kittens.to_json
end