require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Teams.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]

      members.each do |members|
        Hero.new({name: member[:name], power: member[:power], biography: member[:biography]})
      end
      @heroes = Hero.all

      erb :team
    end
end
