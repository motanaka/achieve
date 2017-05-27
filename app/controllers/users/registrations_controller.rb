class Users::RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    #ランダムなuidを代入
    hash[:uid] = User.create_unique_string
    super
  end
end