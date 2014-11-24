Spree::ProductsController.class_eval do
  respond_override :index => {
    :html => {
      :success => lambda do
        @products.all
        if defined? Spree::AssembliesPart == 'constant'
          @assemblies = Spree::AssembliesPart.all.map(&:assembly).uniq.select{|a| a.on_hand > 0 }
        else
          @assemblies = []
        end
        @products = (@products.all + @assemblies).uniq.sort{|a,b| b.available_on <=> a.available_on rescue nil }
        render 'spree/products/index.html.erb'
      end
    }
  }
end