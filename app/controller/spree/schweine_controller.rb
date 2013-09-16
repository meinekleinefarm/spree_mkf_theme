class Spree::SchweineController < Spree::StoreController
  helper "spree/products"
  helper "spree/base"

  respond_to :html

  def index
    @collection = Spree::Schwein.order('position ASC').page(params[:page])
  end

  def show
    @schwein = Spree::Schwein.find_by_permalink(params[:id])
  end

end
