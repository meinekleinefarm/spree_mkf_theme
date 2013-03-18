module Spree
  class Schwein < ActiveRecord::Base

    paginates_per 24

    attr_accessible :name, :description, :meta_keywords, :meta_description, :weight, :date_of_birth, :date_of_death, :permalink

    has_many :images, :as => :viewable, :order => :position, :dependent => :destroy, :class_name => 'Image'

    validate :date_of_birth, :date_of_death, :weight, :presence => true

    # use deleted? rather than checking the attribute directly. this
    # allows extensions to override deleted? if they want to provide
    # their own definition.
    def deleted?
      !!deleted_at
    end

    def products
      Spree::OptionValue.find_by_presentation(name).variants.where('count_on_hand > 0').map(&:product)
    end


  end
end