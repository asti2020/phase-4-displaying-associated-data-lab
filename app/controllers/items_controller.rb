class ItemsController < ApplicationController

    def index
        item = Item.all
        render json: item, include: :user, status: :ok, except: [:created_at, :updated_at]
    end
end
