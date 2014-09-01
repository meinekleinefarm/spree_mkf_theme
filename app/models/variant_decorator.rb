# encoding: utf-8
Spree::Variant.class_eval do

  before_save :set_or_update_initial_count

  attr_accessible :initial_count_on_hand

  def set_or_update_initial_count
    self.initial_count_on_hand = [self.initial_count_on_hand.to_i, self.count_on_hand.to_i].max
  end
end
