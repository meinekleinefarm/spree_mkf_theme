Spree::Product.class_eval do

  def container_property
    Spree::Property.find_or_create_by_name_and_presentation('container', 'Verpackung')
  end

  def weight_property
    Spree::Property.find_or_create_by_name_and_presentation('weight', 'Gewicht')
  end

  def container
    container_property.product_properties.where(:product_id => self.id).try(:first).try(:value)
  end

  def net_weight
    weight_property.product_properties.where(:product_id => self.id).try(:first).try(:value)
  end

end