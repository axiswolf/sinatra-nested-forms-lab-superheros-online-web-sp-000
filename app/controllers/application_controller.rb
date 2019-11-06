require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @teams = Teams.new(name: params[:team], motto: params[:motto])

      erb :team
    end
end
