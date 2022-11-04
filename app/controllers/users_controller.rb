class UsersController < ApplicationController
    def show
        items = User.find(params[:id])
        render json: items, include: :items, status: :ok, except: [:created_at, :updated_at]
      end
end
