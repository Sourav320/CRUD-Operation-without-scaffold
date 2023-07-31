class BooksController < ApplicationController
  # http_basic_authenticate_with name:"dhh", password:"secret", only: :destroy
    def create
        @user=User.find(params[:user_id])
        @book=@user.books.create(book_params)
        # if @book.save
        #   redirect_to root_path
        # else
        
       redirect_to users_path(@user)

    end
   def edit
     @user=User.find(params[:user_id])
     @book=@user.books.find(params[:id])
   end
   
    def update
      @user = User.find(params[:id])   
      @ebd=@user.books.update(book_params)
      # if @user.update(user_params)   

      #   redirect_to root_path
    end
    private
      def book_params
        params.require(:book).permit(:book, :catagory)
      end
end 
