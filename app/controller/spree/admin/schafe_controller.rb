class Spree::Admin::SchafeController < Spree::Admin::ResourceController

  def index
    @schafe = collection
  end

private

  def collection
    params[:q] ||= {}

    @search = Spree::Schaf.ransack(params[:q])
    @collection = @search.result.order('position ASC').page(params[:page]).per(params[:per_page])
  end
end
