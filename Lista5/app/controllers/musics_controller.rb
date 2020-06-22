class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def create
    music = Music.new(musics_params)
    begin
      music.save!
      flash[:notice] = "Música criada com sucesso!"
    rescue => exc
      puts exc
      flash[:notice] = exc
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
      flash[:notice] = "Música excluída com sucesso!"
    rescue => exc
      puts exc
      flash[:notice] = exc
    ensure
      redirect_to musics_path
    end
  end

  def update
    music = Music.find(params[:id])
    begin
      music.update!(musics_params)
      flash[:notice] = "Música editada com sucesso!"
    rescue => exc
      puts exc
      flash[:notice] = exc
    ensure
      redirect_to musics_path
    end
  end

  private
  def musics_params
    params.require('music').permit(:name, :album_id, :explicit, :music_style_id)
  end
end
