class ProductsController < ApplicationController
  def index


  end
  def show
    begin
      @products =Product.find_by_id!(params[:id])
      @showrooms=  findShowroomsOfProduct( @products)
      @designer=  findDesignerOfProduct(@products)
    rescue
      @products =Product.first()
      @showrooms=  findShowroomsOfProduct( @products)
      @designer=  findDesignerOfProduct(@products)
    end
  end

  def  new
    @product= Product.new
  end

  def create
    @product= Product.new(params[:product])
    if @product.save
    redirect_to product_path(id: @product.id)
     end
  end

  def edit
    @products= Product.all
    @product = Product.find(params[:id])
  end

  def update
    params[:product][:showroom_ids]  ||=[]
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to product_path
    else
      render "edit"
    end
  end

  def show_product_by_usage
    @product= Product.find_all_by_pr_usage(params[:pu_id])
    @usage=ProductUsage.find_by_id!(params[:pu_id])
  end

  def findShowroomsOfProduct(_product)
    return  _product.showrooms.all
  end

  def findDesignerOfProduct(_product)
    return  _product.designer
  end


end


class GoOnLink
  def NextProduct(id,usageID)
    begin
      return Product.where("pr_usage = ?",usageID).where("id > ?", id).order("id ASC").first.id
    rescue
      return Product.where("pr_usage = ?",usageID).first().id

    end
  end

  def PrevProduct(id,usageID)
    begin
      return Product.where("pr_usage = ?",usageID).where("id < ?", id).order("id DESC").first.id
    rescue
      return Product.where("pr_usage = ?",usageID).last().id
    end
  end
end


class ProductShowrooms_Class
  def GetShowrooms(product_id)

    
  end
end
