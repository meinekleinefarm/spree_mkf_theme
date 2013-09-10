Spree::ProductsHelper.class_eval do

  def number_to_weight(weight, options = {})
    options.reverse_merge!({:precision => 4, :units => {:unit => 'g', :thousand => 'kg', :billion => 't'}})
    number_to_human(weight.to_i, options)
  end

  def render_weight(pig, options={})
    html = ''
    unless pig.weight.blank?
      inner_html = ''
      inner_html << content_tag( :b, 'Gewicht: ')
      inner_html << content_tag( :span, number_to_weight(pig.weight, options), itemprop: "weight")
      html << content_tag( :span, inner_html.html_safe, class: 'weight')
    end
    html
  end
end