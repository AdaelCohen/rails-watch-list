class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  # def create
  #   @list = List.new(params[:list])
  #   @list.save
  # end

  def edit
    @list = List.find(params[:id])
  end
end