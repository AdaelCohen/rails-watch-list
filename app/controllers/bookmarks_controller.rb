class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = bookmark.new(params[:bookmark])
    @bookmark.save
  end
end
