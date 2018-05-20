ActiveAdmin.register Lecture do 
    permit_params :content , :attachment , :course_id
   index do
      selectable_column
      id_column
      column :content
      column :course
      actions
    end
  
    filter :email
  
    show do |lecture|
      attributes_table do
        row :content
        row :attachment
        row :course
      end
      
    end
  
  
    form do |f|
      f.inputs "Lecture Details" do
        f.input :content
        f.input :attachment
        f.input :course
      end
      f.actions
    end
  end