class BookmarksController < ApplicationController

  def new
    raise
    @category = Category.find(params[:category_id])
    @Bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @category = Category.find(params[:category_id])
    @bookmark.category = @category
    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find params[:id].destroy
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id)
  end
end
