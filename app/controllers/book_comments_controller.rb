class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.comments.new(comment_params)
    comment.book_id = book.id
    comment.save
    redirect_to :back
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to :back
  end
end
