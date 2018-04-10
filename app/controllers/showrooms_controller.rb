class ShowroomsController < ApplicationController


  def index
    if params[:City] != nil
      @showroomsByLocation= Showroom.find_all_by_s_city(params[:City])

    else
      @showrooms= Showroom.all
      @showroomsCity= Showroom.all.uniq_by(&:s_city)

    end

  end

  def new
    @showroom = Showroom.new
  end
  def create
    @showroom = Showroom.new(params[:showroom])
    if @showroom .save
      redirect_to showroom_path(id: @showroom.id)
    else

      render :action => 'new'
    end

  end

  def show

       begin
              @showrooms= Showroom.find_by_id!(params[:id])
              @products=  @showrooms.products.all
       rescue
               @showrooms =Showroom.first()
               @products=  @showrooms.products.all
       end

  end



  def edit
    @showrooms= Showroom.all
    @showroom = Showroom.find(params[:id])
  end

  def update
    @showroom = Showroom.find(params[:id])
    if @showroom.update_attributes(params[:showroom])
      redirect_to showroom_path
    else
      render "edit"
    end
  end

  def destroy

  end
end




class GoOnLink
  def NextRecord(id)
    begin
       return Showroom.where("id > ?", id).order("id ASC").first.id
    rescue
        return Showroom.first().id

    end
  end

  def PrevRecord(id)
    begin
      return Showroom.where("id < ?", id).order("id DESC").first.id
    rescue
      return Showroom.last().id
    end
  end
end