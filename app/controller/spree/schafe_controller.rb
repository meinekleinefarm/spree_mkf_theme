class Spree::SchafeController < Spree::StoreController
  helper "spree/products"
  helper "spree/base"

  respond_to :html

  def index
    @collection = Spree::Schaf.order('position ASC').page(params[:page])
    render
  end

  def show
    @rind = Spree::Schaf.find_by_permalink(params[:id])
  end

end
