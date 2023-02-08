class StoreController < ApplicationController
  include StoreAccessCounter
  include CurrentCart

  before_action :set_counter
  before_action :set_cart

  def index
    time = Time.now
    @date_time = "#{time.strftime("%d/%m/%Y")} #{time.strftime("%I:%M %p")}"
    @products = Product.order(:title)
  end
end
