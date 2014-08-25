# encoding: utf-8
Spree::Variant.class_eval do

  before_save :set_or_update_initial_count

  def set_or_update_initial_count
    initial_count_on_hand = [initial_count_on_hand, count_on_hand].max
  end
end
