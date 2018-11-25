module Admin
  class DungeonsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Dungeon.
    #     page(params[:page]).
    #     per(10)
    # end
    def new
      dungeon = Dungeon.generate
      authorize_resource(dungeon)
      render locals: {
        page: Administrate::Page::Form.new(dashboard, dungeon),
      }
    end

    def update
      if requested_resource.update_and_generate(resource_params)
        redirect_to(
          [namespace, requested_resource],
          notice: translate_with_resource("update.success"),
        )
      else
        render :edit, locals: {
          page: Administrate::Page::Form.new(dashboard, requested_resource),
        }
      end
    end
  end
# Define a custom finder by overriding the `find_resource` method:
# def find_resource(param)
#   Dungeon.find_by!(slug: param)
# end

# See https://administrate-prototype.herokuapp.com/customizing_controller_actions
# for more information
end
