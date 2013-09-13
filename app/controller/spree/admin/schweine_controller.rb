class Spree::Admin::SchweineController < Spree::Admin::ResourceController

  def index
    @schweine = collection
  end

private

  def collection
    params[:q] ||= {}

    @search = Spree::Schwein.ransack(params[:q])
    @collection = @search.result.order('position ASC').page(params[:page]).per(params[:per_page])
  end
end
