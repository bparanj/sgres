class UsersController < ApplicationController
  def index
    respond_to do |format|
      @users = if params[:term]
        User.search_by_full_name(params[:term]).with_pg_search_highlight
      else
        User.all
      end
      format.json
      format.html
    end
  end
end
