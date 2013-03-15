module Spree
  class Schwein < ActiveRecord::Base

    paginates_per 24

    attr_accessible :name, :description, :meta_keywords, :meta_description, :weight, :date_of_death, :permalink

    has_many :images, :as => :viewable, :order => :position, :dependent => :destroy, :class_name => 'Image'

    # use deleted? rather than checking the attribute directly. this
    # allows extensions to override deleted? if they want to provide
    # their own definition.
    def deleted?
      !!deleted_at
    end


  end
end