class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    def index
        @listing = Listing.all
        if !session[:count]
          session[:count] = 1
        else
          session[:count] += 1
        end
    end

    def show
    
    end

    def new
        @listing = Listing.new
    end

    def create
        #@listing = current_user.listings.build(listing_params)
        @listing = Listing.new(listing_params)
        @listing.user_id = current_user.id
        if @listing.save
          flash[:success]= "successfully created a new item"
          redirect_to @listing
        else
          render :new
        end
    end

    def edit

    end

    def update
        if @listing.update(listing_params)
          redirect_to root_path
        else
          render :edit
        end
    end

    def destroy
      @listing.destroy
      redirect_to root_path
    end

    private
      def listing_params
        params.require(:listing).permit(:title, :description, :category_id, :picture)
      end

      def set_listing
        @listing = Listing.find(params[:id])
      end
end