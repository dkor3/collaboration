class BooksController < ApplicationController
    def create
      @book=Book.new(book_params)
      @book.host_id=params[:host_id]
      @book.save
  
      redirect_to :back
    end
  
    def destroy
    end
  
    def book_params
      params.require(:book).permit(:name, :phone, :email, :start, :end, :content)
    end
  
  end
  