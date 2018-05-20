ActiveAdmin.register Course do 
    permit_params :title
   index do
      selectable_column
      id_column
      column :title
      actions
    end
  
    filter :email
  
    show do |course|
      attributes_table do
        row :title
      end
      
    end
  
  
    form do |f|
      f.inputs "Course Details" do
        f.input :title
      end
      f.actions
    end
  end