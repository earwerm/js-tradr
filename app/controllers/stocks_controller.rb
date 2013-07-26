class StocksController < ApplicationController
  before_filter :only_authorized
  def index
  end

  private
  def only_authorized
    redirect_to(root_path) if @auth.nil?
  end
end