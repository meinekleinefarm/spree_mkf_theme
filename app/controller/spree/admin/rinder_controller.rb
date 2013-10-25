class Spree::Admin::RinderController < Spree::Admin::ResourceController

  def index
    @rinder = collection
  end

private

  def collection
    params[:q] ||= {}

    @search = Spree::Rind.ransack(params[:q])
    @collection = @search.result.order('position ASC').page(params[:page]).per(params[:per_page])
  end
end
