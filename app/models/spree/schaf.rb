module Spree
  class Schaf < ActiveRecord::Base

    acts_as_list

    paginates_per 24

    attr_accessible :name, :description, :meta_keywords, :meta_description, :weight, :date_of_birth, :date_of_death, :permalink, :race

    has_many :images, :as => :viewable, :order => :position, :dependent => :destroy, :class_name => 'Image'

    validate :date_of_birth, :date_of_death, :weight, :presence => true

    after_create :ensure_option_value_exist

    # use deleted? rather than checking the attribute directly. this
    # allows extensions to override deleted? if they want to provide
    # their own definition.
    def deleted?
      !!deleted_at
    end

    def products
      Spree::OptionValue.find_by_presentation(self.name).variants.active.where('count_on_hand > 0').map(&:product).uniq rescue []
    end

    def ensure_option_value_exist
      pig = ensure_option_pig_exists
      new_variant = pig.option_values.find_or_create_by_name_and_presentation(self.name, self.name)
      new_variant.move_to_top
    end

    def ensure_option_pig_exists
      Spree::OptionType.find_or_create_by_name_and_presentation('pig','von')
    end
  end
end