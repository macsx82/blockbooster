class ManufactorersController < ApplicationController
  # GET /manufactorers
  # GET /manufactorers.json
  def index
    @manufactorers = Manufactorer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manufactorers }
    end
  end

  # GET /manufactorers/1
  # GET /manufactorers/1.json
  def show
    @manufactorer = Manufactorer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manufactorer }
    end
  end

  # GET /manufactorers/new
  # GET /manufactorers/new.json
  def new
    @manufactorer = Manufactorer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manufactorer }
    end
  end

  # GET /manufactorers/1/edit
  def edit
    @manufactorer = Manufactorer.find(params[:id])
  end

  # POST /manufactorers
  # POST /manufactorers.json
  def create
    @manufactorer = Manufactorer.new(params[:manufactorer])

    respond_to do |format|
      if @manufactorer.save
        format.html { redirect_to @manufactorer, notice: 'Manufactorer was successfully created.' }
        format.json { render json: @manufactorer, status: :created, location: @manufactorer }
      else
        format.html { render action: "new" }
        format.json { render json: @manufactorer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manufactorers/1
  # PUT /manufactorers/1.json
  def update
    @manufactorer = Manufactorer.find(params[:id])

    respond_to do |format|
      if @manufactorer.update_attributes(params[:manufactorer])
        format.html { redirect_to @manufactorer, notice: 'Manufactorer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @manufactorer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufactorers/1
  # DELETE /manufactorers/1.json
  def destroy
    @manufactorer = Manufactorer.find(params[:id])
    @manufactorer.destroy

    respond_to do |format|
      format.html { redirect_to manufactorers_url }
      format.json { head :ok }
    end
  end
end
