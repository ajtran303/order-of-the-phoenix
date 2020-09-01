class SearchController < ApplicationController
  def index
    @members = PhoenixFacade.members_from_house(params[:house])
  end
end
