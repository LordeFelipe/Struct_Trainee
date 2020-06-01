class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def create
    music = Music.new(musics_params)
    begin
      music.save!
    rescue => exc
      puts exc
    ensure
      redirect_to musics_path
    end
  end

  def new
    @music = Music.new
  end

  def edit
    @music = Music.find(params[:id])
  end

  def show
    @music = Music.find(params[:id])
  end

  def destroy
    music = Music.find(params[:id])
    begin
      music.destroy!
    rescue => exc
      puts exc
    ensure
      redirect_to musics_path
    end
  end

  def update
    music = Music.find(params[:id])
    begin
      music.update!(musics_params)
    rescue => exc
      puts exc
    ensure
      redirect_to musics_path
    end
  end

  private
  def musics_params
    params.require('music').permit(:name, :album_id, :explicit, :music_style_id)
  end
end
