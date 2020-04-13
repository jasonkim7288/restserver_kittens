require 'rubygems'
require 'sinatra'

get '/kittens' do
    width = rand(1..20) * 100
    height = rand(1..20) * 100
    array_kittens = []
    50.times do |i|
        kitten = {}
        kitten[:width] = width
        kitten[:height] = height
        kitten[:img_path] = "http://placekitten.com/#{width}/#{height}"
        array_kittens.push(kitten)
    end
    array_kittens.to_json
end