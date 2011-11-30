class AudioFilesController < ApplicationController
  # GET /audio_files
  # GET /audio_files.json
  def index
    @audio_files = AudioFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audio_files }
    end
  end

  # GET /audio_files/1
  # GET /audio_files/1.json
  def show
    @audio_file = AudioFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @audio_file }
    end
  end

  # GET /audio_files/new
  # GET /audio_files/new.json
  def new
    @audio_file = AudioFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @audio_file }
    end
  end

  # GET /audio_files/1/edit
  def edit
    @audio_file = AudioFile.find(params[:id])
  end

  # POST /audio_files
  # POST /audio_files.json
  def create
    @audio_file = AudioFile.new(params[:audio_file])

    respond_to do |format|
      if @audio_file.save
        format.html { redirect_to @audio_file, notice: 'Audio file was successfully created.' }
        format.json { render json: @audio_file, status: :created, location: @audio_file }
      else
        format.html { render action: "new" }
        format.json { render json: @audio_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /audio_files/1
  # PUT /audio_files/1.json
  def update
    @audio_file = AudioFile.find(params[:id])

    respond_to do |format|
      if @audio_file.update_attributes(params[:audio_file])
        format.html { redirect_to @audio_file, notice: 'Audio file was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @audio_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audio_files/1
  # DELETE /audio_files/1.json
  def destroy
    @audio_file = AudioFile.find(params[:id])
    @audio_file.destroy

    respond_to do |format|
      format.html { redirect_to audio_files_url }
      format.json { head :ok }
    end
  end
end
