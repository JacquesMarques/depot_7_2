class CopyProductsPriceToLineItemsPrice < ActiveRecord::Migration[7.2]
  def up
    # update prices of line items with product price
    Product.all.each do |product|
      LineItem.where(product_id: product.id).update_all(price: product.price)
    end
  end
end
