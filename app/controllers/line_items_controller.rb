class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = @cart.line_items.includes(:product).all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
        @product = Product.find(params[:product_id])
        @cart.add_item(@product)
        respond_to do |format|
          if params[:product].blank?
             format.html {redirect_to products_path, notice: 'Товар добавлен в корзину.'}
             format.js
          else
            redirect_to product_path(params[:product]), notice: 'Товар добавлен в корзину.'
          end
        end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    if @line_item.update(line_item_params)
      redirect_to @line_item, notice: 'Элемент успешно изменён.'
    else
      render :edit
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    if @line_item.quantity == 1
      @line_item.destroy
    else
      @line_item.quantity -= 1
      @line_item.save
    end
    case params[:place]
      when "cart"
        redirect_to @cart, notice: 'Товар успешно удалён.'
      when "line_items"
        redirect_to line_items_path, notice: 'Товар успешно удалён.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:quantity, :price, :cart_id, :product_id)
    end
end
