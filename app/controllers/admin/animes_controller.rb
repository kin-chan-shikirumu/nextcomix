class Admin::AnimesController < ApplicationController
  before_action :authenticate_admin_user!

  def index
    @animes = Anime.order(:rank)
  end

  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)
    if @anime.save
      redirect_to admin_animes_path, notice: 'アニメを追加しました'
    else
      render :new
    end
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def update
    @anime = Anime.find(params[:id])
    if @anime.update(anime_params)
      redirect_to admin_animes_path, notice: 'アニメを更新しました'
    else
      render :edit
    end
  end

  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy
    redirect_to admin_animes_path, notice: 'アニメを削除しました'
  end

  private

  def anime_params
    params.require(:anime).permit(:title, :rank)
  end
end
