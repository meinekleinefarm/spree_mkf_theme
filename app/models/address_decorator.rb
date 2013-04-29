Spree::Address.class_eval do

  protected
    def require_phone?
     false
    end
end