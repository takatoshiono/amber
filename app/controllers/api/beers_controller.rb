module Api
  class BeersController < ApplicationController
    def create
      # TODO: User を作る

      @activity = Beer.create(memo: params['memo'])

      render json: @activity, status: :created
    end
  end
end
