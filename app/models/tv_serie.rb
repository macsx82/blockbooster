class TvSerie < ActiveRecord::Base
  has_many :products, :as => :details
  has_many :tv_serie_episodes, :class_name => "TvSerieEpisode", :foreign_key => "tv_serie_id" 
end
