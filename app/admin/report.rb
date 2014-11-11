ActiveAdmin.register Report do

   permit_params do
     permitted = [:permitted, :attributes]
   end

  show do
    attributes_table do
      row :player
      row :description
      row :screenshot do |report|
        image_tag report.screenshot
      end
    end
  end

end
