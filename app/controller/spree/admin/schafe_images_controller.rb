module Spree
  module Admin
    class SchafeImagesController < Spree::Admin::ImagesController

      protect_from_forgery
      # Allow requests withouth authenticity token
      skip_before_filter :verify_authenticity_token


      before_filter :load_data

      create.before :set_viewable
      update.before :set_viewable
      destroy.before :destroy_before

      def index
        render :template => 'spree/admin/schafe/images/index'
      end

      def new
        invoke_callbacks(:new_action, :before)
        respond_with(@object) do |format|
          format.html { render :layout => !request.xhr?, :template => 'spree/admin/schafe/images/new' }
          format.js   { render :layout => false, :template => 'spree/admin/schafe/images/new' }
        end
      end

      def edit
        invoke_callbacks(:edit_action, :before)
        respond_with(@object) do |format|
          format.html { render :layout => !request.xhr?, :template => 'spree/admin/schafe/images/edit' }
          format.js   { render :layout => false, :template => 'spree/admin/schafe/images/edit' }
        end
      end

      def create
        invoke_callbacks(:create, :before)
        @object.attributes = params[object_name]
        if @object.save
          invoke_callbacks(:create, :after)
          flash[:success] = flash_message_for(@object, :successfully_created)
          respond_with(@object) do |format|
            format.html { render :text => 'OK' }
            format.js   { render :json => 'OK' }
          end
        else
          invoke_callbacks(:create, :fails)
          respond_with(@object)
        end
      end

      private

        def model_class
          "Spree::Image".constantize
        end

        def model_name
          'schaf'
        end

        def object_name
          'image'
        end

        def location_after_save
          admin_schaf_images_url(@schaf)
        end

        def load_data
          @schaf = Schaf.find(params[:schaf_id])
        end

        def set_viewable
          @image.viewable_type = 'Spree::Schaf'
          @image.viewable_id = params[:image][:viewable_id]
        end


        def destroy_before
          @viewable = @image.viewable
        end

    end
  end
end
