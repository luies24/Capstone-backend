class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all

        render json: @activities
    end

    def show
        @activity = Activity.find(params[:id])

        render json: @activity
    end

    def create
       @activity = Activity.create(
            name: params[:name]
            time: params[:time]
            location: params[:location]
            users_id: params[:users_id]
        )

        render json: @activity
    end
end
