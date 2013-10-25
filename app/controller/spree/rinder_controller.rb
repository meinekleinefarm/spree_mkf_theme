class Spree::RinderController < Spree::StoreController
  helper "spree/products"
  helper "spree/base"

  respond_to :html

  def index
    @collection = Spree::Rind.order('position ASC').page(params[:page])
    render
  end

  def show
    @rind = Spree::Rind.find_by_permalink(params[:id])
  end

end
