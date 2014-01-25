module Spree
  module Admin
    class RinderImagesController < Spree::Admin::ImagesController

      protect_from_forgery
      # Allow requests withouth authenticity token
      skip_before_filter :verify_authenticity_token


      before_filter :load_data

      create.before :set_viewable
      update.before :set_viewable
      destroy.before :destroy_before

      def index
        render :template => 'spree/admin/rinder/images/index'
      end

      def new
        invoke_callbacks(:new_action, :before)
        respond_with(@object) do |format|
          format.html { render :layout => !request.xhr?, :template => 'spree/admin/rinder/images/new' }
          format.js   { render :layout => false, :template => 'spree/admin/rinder/images/new' }
        end
      end

      def edit
        invoke_callbacks(:edit_action, :before)
        respond_with(@object) do |format|
          format.html { render :layout => !request.xhr?, :template => 'spree/admin/rinder/images/edit' }
          format.js   { render :layout => false, :template => 'spree/admin/rinder/images/edit' }
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
          'rind'
        end

        def object_name
          'image'
        end

        def location_after_save
          admin_rind_images_url(@rind)
        end

        def load_data
          @rind = Rind.find(params[:rind_id])
        end

        def set_viewable
          @image.viewable_type = 'Spree::Rind'
          @image.viewable_id = params[:image][:viewable_id]
        end


        def destroy_before
          @viewable = @image.viewable
        end

    end
  end
end
