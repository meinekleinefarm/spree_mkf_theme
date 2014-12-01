class Spree::StartController < Spree::StoreController
  helper "spree/products"
  helper "spree/base"

  respond_to :html

  def index
    @schweine = Spree::Schwein.order('position ASC').limit(3)
    @searcher = Spree::Config.searcher_class.new({})
    if ('Spree::AssembliesPart'.constantize rescue false)
      @assemblies = Spree::AssembliesPart.all.map(&:assembly).uniq.select{|a| a.on_hand > 0 }
    else
      @assemblies = []
    end
    @products = @searcher.retrieve_products.
      reject{|p| p.taxons.any?{|t| t.name.include?('Sonstiges')}}
    @products = (@products + @assemblies).uniq.sort{|a,b| b.available_on <=> a.available_on rescue nil}[0...3]
    @blog = defined?(SpreeEssentialBlog) == 'constant' ? "Spree::Blog".constantize.first : nil
  end

end
