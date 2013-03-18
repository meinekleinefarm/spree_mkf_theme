Spree::ProductsHelper.class_eval do

  def number_to_weight(weight)
    number_to_human(weight.to_i, :precision => 4, :units => {:unit => 'g', :thousand => 'kg'} )
  end
end