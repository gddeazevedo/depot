class CopyProductPriceIntoLineItems < ActiveRecord::Migration[7.0]
  def up
    add_column(
      :line_items,
      :product_unit_price,
      :decimal,
      precision: 8,
      scale: 2
    )

    Cart.all.each do |cart|
      cart.line_items.each do |line_item|
        line_item.product_unit_price = line_item.product.price
        line_item.save!
      end
    end
  end

  def down
    remove_column :line_items, :product_unit_price, if_exists: true
  end
end
