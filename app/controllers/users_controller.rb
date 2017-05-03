class UsersController < ApplicationController
  def index
    respond_to do |format|
      @users = if params[:term]
        User.multisearchable(params[:term])
      else
        User.all
      end
      format.json
      format.html
    end
  end
end
