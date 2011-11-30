class TvSeriesController < ApplicationController
  # GET /tv_series
  # GET /tv_series.json
  def index
    @tv_series = TvSerie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tv_series }
    end
  end

  # GET /tv_series/1
  # GET /tv_series/1.json
  def show
    @tv_series = TvSerie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tv_series }
    end
  end

  # GET /tv_series/new
  # GET /tv_series/new.json
  def new
    @tv_series = TvSerie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tv_series }
    end
  end

  # GET /tv_series/1/edit
  def edit
    @tv_series = TvSerie.find(params[:id])
  end

  # POST /tv_series
  # POST /tv_series.json
  def create
    @tv_series = TvSerie.new(params[:tv_series])

    respond_to do |format|
      if @tv_series.save
        format.html { redirect_to @tv_series, notice: 'Tv serie was successfully created.' }
        format.json { render json: @tv_series, status: :created, location: @tv_series }
      else
        format.html { render action: "new" }
        format.json { render json: @tv_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tv_series/1
  # PUT /tv_series/1.json
  def update
    @tv_series = TvSerie.find(params[:id])

    respond_to do |format|
      if @tv_series.update_attributes(params[:tv_series])
        format.html { redirect_to @tv_series, notice: 'Tv serie was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tv_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_series/1
  # DELETE /tv_series/1.json
  def destroy
    @tv_series = TvSerie.find(params[:id])
    @tv_series.destroy

    respond_to do |format|
      format.html { redirect_to tv_series_url }
      format.json { head :ok }
    end
  end
end
