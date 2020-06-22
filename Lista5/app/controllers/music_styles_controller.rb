class MusicStylesController < ApplicationController
  def index
    @music_styles = MusicStyle.all
  end
end
