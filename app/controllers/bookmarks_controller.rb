class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    #@movie = Movie.find(id)   not needed because we have it in form
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
  end

  private

def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
end
end
