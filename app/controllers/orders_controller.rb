class OrdersController < ApplicationController

def index
	# @orders = Order.all
	# respond_to do |format|
 #      format.html # index.html.erb
 #      format.json { render json: @orders }
 #    end
end

def new
	@order = Order.new
	respond_to do |format|
    format.html  # new.html.erb
    format.json  { render :json => @order }
	
	end

end

def create
	@order = Order.new(params[:order])
	 respond_to do |format|
    if @order.save
      format.html { redirect_to(@order, :notice => 'Order has been saved!') }
      format.xml  { render :xml => @order, :status => :created, :location => @order }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
    end
  end
    # if @order.save
    # redirect_to orders_path(@order)             
    # else
   	# render :action => :new 
    # end
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
