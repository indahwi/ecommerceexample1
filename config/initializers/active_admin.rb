ActiveAdmin.setup do |config|
  # You don't need to modify any settings here to get CanCan to work
  # Just remember to add CanCan to your Gemfile
  # ...
end

# Below the ActiveAdmin.setup block, I've opened up the ActiveAdmin::ResourceController
# and modified the current_ability method to use a special AdminAbility class.
# Technically you can put this code almost anywere, but I've added it here because
# I think it belongs together with the other Active Admin initializer code.

ActiveAdmin::ResourceController.class_eval do
  protected

  def current_ability
    @current_ability ||= AdminAbility.new(current_user)
  end
end