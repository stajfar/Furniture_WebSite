class DesignersController < ApplicationController
  def index
     @designers= Designer.all

  end

  def new
     @designer = Designer.new
  end
  def create
    @designer = Designer.new(params[:designer])
    if @designer.save
      redirect_to :action => 'index'
    else

      render :action => 'new'
    end

  end



  def show
    begin
      @designer= Designer.find(params[:DesignerID])
      @products=  @designer.products.all

    rescue
      @designer= Designer.first()
      @products=  @designer.products.all
    end
  end

  def edit
    @designers= Designer.all
    @designer = Designer.find(params[:id])
  end

  def update
    @designer = Designer.find(params[:id])
    if @designer.update_attributes(params[:designer])
        redirect_to designer_path
    else
       render "edit"
    end
  end

  def destroy
  end

end


class ManGoOnLink
  def NextRecord(id2)
    begin
      return Designer.where("id > ?", id2).order("id ASC").first.id
    rescue
      return Designer.first().id

    end
  end

  def PrevRecord(id2)
    begin
      return Designer.where("id < ?", id2).order("id DESC").first.id
    rescue
      return Designer.last().id
    end
  end



end


