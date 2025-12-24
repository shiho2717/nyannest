class CatsController < ApplicationController
  def index
    @cats = current_user.cats.order(created_at: :desc)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = current_user.cats.new(cat_params)
    if @cat.save
      redirect_to cats_path
    else
      render :new
    end
  end

  def show
    @cat = current_user.cats.find(params[:id])
  end

  def edit
    @cat = current_user.cats.find(params[:id])
  end

  def update
    @cat = current_user.cats.find(params[:id])

    if @cat.update(cat_params)
      redirect_to cat_path(@cat)
    else
      render :edit
    end
  end

  def destroy
    @cat = current_user.cats.find(params[:id])
    @cat.destroy
    redirect_to cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:name)
  end
end
