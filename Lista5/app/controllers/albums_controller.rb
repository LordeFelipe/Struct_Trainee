class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def create
    album = Album.new(albums_params)
    begin
      album.save!
      flash[:notice] = "Album criado com sucesso!"
    rescue => exc
      puts exc
      flash[:notice] = exc
    ensure
      redirect_to albums_path
    end
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def show
    @album = Album.find(params[:id])
  end

  def destroy
    album = Album.find(params[:id])
    begin
      album.destroy!
      flash[:notice] = "Album excluído com sucesso!"
    rescue => exc
      puts exc
      flash[:notice] = exc
    ensure
      redirect_to albums_path
    end
  end

  def update
    album = Album.find(params[:id])
    begin
      album.update!(albums_params)
      flash[:notice] = "Album editado com sucesso!"
    rescue => exc
      puts exc
      flash[:notice] = exc
    ensure
      redirect_to albums_path
    end
  end

  private
  def albums_params
    params.require('album').permit(:name, :artist)
  end
end
