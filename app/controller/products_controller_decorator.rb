Spree::ProductsController.class_eval do
  respond_override :index => {
    :html => {
      :success => lambda do
        @products.sort!{|a,b| b.available_on <=> a.available_on}
        render 'spree/products/index.html.erb'
      end
    }
  }
end