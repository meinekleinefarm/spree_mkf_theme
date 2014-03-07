class Spree::StartController < Spree::StoreController
  helper "spree/products"
  helper "spree/base"

  respond_to :html

  def index
    @schweine = Spree::Schwein.order('position ASC').limit(3)
    @searcher = Spree::Config.searcher_class.new({})
    @products = @searcher.retrieve_products.
      reject{|p| p.taxons.any?{|t| t.name.include?('Sonstiges')}}.
      sort{|p| p.on_hand }.reverse[0...3]
    @blog = defined?(SpreeEssentialBlog) == 'constant' ? "Spree::Blog".constantize.first : nil
  end

end
