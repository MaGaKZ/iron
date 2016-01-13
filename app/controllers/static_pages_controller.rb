class StaticPagesController < ApplicationController
  def home
  	@categories=Category.all
  	@producers=Producer.all
  end

  def about
  	@categories=Category.all
  	@producers=Producer.all
  end
end
