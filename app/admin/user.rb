ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :login, :email, :password, :password_confirmation
actions :all

  index do
    column :login
    column :email
    column :admin
    actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :login
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end


end
