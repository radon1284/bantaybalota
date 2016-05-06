ActiveAdmin.register Report do
  permit_params :precinct_number, :ballot_number, :vote_receipt_number, :bei_name, :voted_president, :pcos_result_president, :voted_vice_president, :pcos_result_vice_president

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


end
