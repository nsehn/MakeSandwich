class OrderController < ApplicationController

def index
	@orders = Order.all
	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
end

def new
	@order = Order.new
	respond_to do |format|
    format.html  # new.html.erb
    format.json  { render :json => @order }
	
	end

end

def create
	@order = Order.new(params[:id])
	make_order = @order.create_by_name(user.name)
	user.name = params[:name]
	make_order.save
end


def show
	@order = Order.find(params[:id])
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end

end

def edit
	@order = Order.find(params[:id])
end

end
