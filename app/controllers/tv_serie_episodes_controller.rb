class TvSerieEpisodesController < ApplicationController
  # GET /tv_serie_episodes
  # GET /tv_serie_episodes.json
  def index
    @tv_serie_episodes = TvSerieEpisode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tv_serie_episodes }
    end
  end

  # GET /tv_serie_episodes/1
  # GET /tv_serie_episodes/1.json
  def show
    @tv_serie_episode = TvSerieEpisode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tv_serie_episode }
    end
  end

  # GET /tv_serie_episodes/new
  # GET /tv_serie_episodes/new.json
  def new
    @tv_serie_episode = TvSerieEpisode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tv_serie_episode }
    end
  end

  # GET /tv_serie_episodes/1/edit
  def edit
    @tv_serie_episode = TvSerieEpisode.find(params[:id])
  end

  # POST /tv_serie_episodes
  # POST /tv_serie_episodes.json
  def create
    @tv_serie_episode = TvSerieEpisode.new(params[:tv_serie_episode])

    respond_to do |format|
      if @tv_serie_episode.save
        format.html { redirect_to @tv_serie_episode, notice: 'Tv serie episode was successfully created.' }
        format.json { render json: @tv_serie_episode, status: :created, location: @tv_serie_episode }
      else
        format.html { render action: "new" }
        format.json { render json: @tv_serie_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tv_serie_episodes/1
  # PUT /tv_serie_episodes/1.json
  def update
    @tv_serie_episode = TvSerieEpisode.find(params[:id])

    respond_to do |format|
      if @tv_serie_episode.update_attributes(params[:tv_serie_episode])
        format.html { redirect_to @tv_serie_episode, notice: 'Tv serie episode was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tv_serie_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_serie_episodes/1
  # DELETE /tv_serie_episodes/1.json
  def destroy
    @tv_serie_episode = TvSerieEpisode.find(params[:id])
    @tv_serie_episode.destroy

    respond_to do |format|
      format.html { redirect_to tv_serie_episodes_url }
      format.json { head :ok }
    end
  end
end
