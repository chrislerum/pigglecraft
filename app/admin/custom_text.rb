ActiveAdmin.register CustomText do

  permit_params do
    permitted = [:permitted, :attributes]
  end

  show do
    attributes_table do
      row :name
      row :the_text
    end
  end

end
