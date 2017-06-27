ActiveAdmin.register Post do

  permit_params :title, :image

  form do |f|
    f.inputs do
      f.input :title
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :image do |post|
      image_tag(post.image, height: '70px') unless post.image.blank?
    end
    column :title do |post|
      link_to post.title, admin_post_path(post)
    end
    actions
  end

  show do
    attributes_table do
      row :image do |post|
        image_tag(post.image,  size: '250x400') unless post.image.blank?
      end
      row :title

    end
  end


end
