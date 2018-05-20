ActiveAdmin.register User do 
    permit_params :email,:name, :country_id, :password  
   index do
      selectable_column
      id_column
      column :email
      column :name
      actions
    end
  
    filter :email
  
    show do |user|
      attributes_table do
        row :email
        row :name
        row :image do
          user.image? ? image_tag(user.image.url, height: '100') : content_tag(:span, "No photo yet")
        end
         
      end  
    end
  
  
    form do |f|
      f.inputs "User Details" do
        f.input :name
        f.input :email
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
  end