class TvSerieEpisode < ActiveRecord::Base
  belongs_to :tv_serie, :class_name => "TvSerie", :foreign_key => "tv_serie_id" 
end
