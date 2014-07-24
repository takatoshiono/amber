module Api
  class BeersController < ApplicationController
    def create
      # TODO: User を作る

      @activity = Beer.create

      render json: @activity, status: :created
    end
  end
end
