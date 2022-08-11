class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = bookmark.new(params[:bookmark])
    @bookmark.save
  end

  def destroy
    @list.destroy
    redirect_to lists_url, notice: "list was successfully destroyed."
  end
end
