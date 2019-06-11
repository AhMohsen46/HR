ActiveAdmin.register Submission do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#filter :paper_id, :as =>
permit_params [:paper_id, :user_id]

end


# form do |f|
#     f.semantic_errors *f.object.errors.keys
#     f.inputs "Submission" do
#       f.input :user_id
#       f.input :paper_id, :as => :check_boxes
#       #Zpermit_params [:paper_id, :user_id]
#     end
#     f.actions
# end