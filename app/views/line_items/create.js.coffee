$(document).trigger 'cart:update'
#alert "Товар << <%=j @product.name%> >> добавлен в корзину"
+$('#cart_info').html("<%= escape_javascript render(@cart) %>");