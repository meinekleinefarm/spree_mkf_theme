module Spree
  module Admin
    class SchweineImagesController < Spree::Admin::ImagesController

      protect_from_forgery
      # Allow requests withouth authenticity token
      skip_before_filter :verify_authenticity_token


      before_filter :load_data

      create.before :set_viewable
      update.before :set_viewable
      destroy.before :destroy_before

      def index
        render :template => 'spree/admin/schweine/images/index'
      end

      def new
        invoke_callbacks(:new_action, :before)
        respond_with(@object) do |format|
          format.html { render :layout => !request.xhr?, :template => 'spree/admin/schweine/images/new' }
          format.js   { render :layout => false, :template => 'spree/admin/schweine/images/new' }
        end
      end

      def edit
        invoke_callbacks(:edit_action, :before)
        respond_with(@object) do |format|
          format.html { render :layout => !request.xhr?, :template => 'spree/admin/schweine/images/edit' }
          format.js   { render :layout => false, :template => 'spree/admin/schweine/images/edit' }
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
          'schwein'
        end

        def object_name
          'image'
        end

        def location_after_save
          admin_schwein_images_url(@schwein)
        end

        def load_data
          @schwein = Schwein.find(params[:schwein_id])
        end

        def set_viewable
          @image.viewable_type = 'Spree::Schwein'
          @image.viewable_id = params[:image][:viewable_id]
        end


        def destroy_before
          @viewable = @image.viewable
        end

    end
  end
end
