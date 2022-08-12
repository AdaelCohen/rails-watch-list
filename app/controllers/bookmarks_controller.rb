class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = bookmark.new(params[:bookmark])
    @bookmark.save
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_url, notice: "bookmark was successfully destroyed."
  end
end

heroku create watchlist1 --region us
