class CatsController < ApplicationController
  def index
    @cats = current_user.cats.order(created_at: :desc)
  end

  def new
    @cat = Cat.new
  end
end
