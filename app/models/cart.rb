class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    
    unless current_item.nil?
      current_item.quantity += 1
      current_item.product_unit_price = product.price
    else
      current_item = line_items.build(product_id: product.id, product_unit_price: product.price)
    end

    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
