require 'sinatra/base'
require_relative 'app/models/team.rb'
relative_relative 'app/models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      erb :team
    end
end
