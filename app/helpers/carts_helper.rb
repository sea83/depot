module CartsHelper
  def show_cart(cart)
    text = "В корзине #{cart.total_line_items} товаров на сумму #{number_to_currency cart.total_amount}"
    content_tag(:div, text, class: "alert alert-info")
  end
end
