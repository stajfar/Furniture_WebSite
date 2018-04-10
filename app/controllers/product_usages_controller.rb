class ProductUsagesController < ApplicationController
  def index
    @usages=ProductUsage.all
  end

  def new
     @product_usage=ProductUsage.new
  end

  def create
    @product_usage = ProductUsage.new(params[:product_usage])
    if @product_usage.save
      redirect_to "/controlpanel.html"
    else
      render "new"
    end
  end

  def edit
    @product_usages = ProductUsage.all
    @product_usage = ProductUsage.find(params[:id])
  end

  def update
    @product_usage = ProductUsage.find(params[:id])
    if @product_usage.update_attributes(params[:product_usage])
      redirect_to "/controlpanel.html"
    else
      render "edit"
    end
  end

  def delete_usage

  end

  def destroy

  end


end
