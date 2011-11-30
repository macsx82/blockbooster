class SupportsController < ApplicationController
  # GET /supports
  # GET /supports.json
  def index
    @supports = Support.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supports }
    end
  end

  # GET /supports/1
  # GET /supports/1.json
  def show
    @support = Support.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @support }
    end
  end

  # GET /supports/new
  # GET /supports/new.json
  def new
    @support = Support.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @support }
    end
  end

  # GET /supports/1/edit
  def edit
    @support = Support.find(params[:id])
  end

  # POST /supports
  # POST /supports.json
  def create
    @support = Support.new(params[:support])

    respond_to do |format|
      if @support.save
        format.html { redirect_to @support, notice: 'Support was successfully created.' }
        format.json { render json: @support, status: :created, location: @support }
      else
        format.html { render action: "new" }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supports/1
  # PUT /supports/1.json
  def update
    @support = Support.find(params[:id])

    respond_to do |format|
      if @support.update_attributes(params[:support])
        format.html { redirect_to @support, notice: 'Support was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supports/1
  # DELETE /supports/1.json
  def destroy
    @support = Support.find(params[:id])
    @support.destroy

    respond_to do |format|
      format.html { redirect_to supports_url }
      format.json { head :ok }
    end
  end
end
