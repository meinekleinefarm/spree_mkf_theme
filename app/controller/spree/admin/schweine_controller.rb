class Spree::Admin::SchweineController < Spree::Admin::ResourceController

  def index
    @schweine = collection
  end

end