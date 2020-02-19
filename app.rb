require 'sinatra/base'



class App < Sinatra::Base


    get '/newteam' do
        erb :newteam
    end


    post '/team' do
        @team_name = params["name"].capitalize
        @coach_name = params["coach"].capitalize
        @point_guard = params[:pg].capitalize
        @shooting_guard = params[:sg].capitalize
        @small_forward = params[:sf].capitalize
        @power_forward = params[:pf].capitalize
        @center = params[:c].capitalize

        
        erb :team
    end


end
