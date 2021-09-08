class CitasController < ApplicationController

  def index
    @citas = Cita.all
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @cita }
    end
  end

  def new
    @cita = Cita.new
  end

  def show
    @cita = Cita.find(params[:id])
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @cita }
    end
  end

  def create
    @cita = Cita.new(
      mascota: params[:mascota],
      edad: params[:edad],
      raza: params[:raza],
      fecha: params[:fecha],
      hora: params[:hora],
      amo: params[:amo]
    )
    if @cita.save
      redirect_to cita_path(@cita.id)
    else
      render :new
    end
  end
end
