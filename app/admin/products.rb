ActiveAdmin.register Product do
	form do |f|
			f.inputs do
			f.input :title
			f.input :description
			f.input :price_in_pence
			f.input :previous_price_in_pence
			f.input :image, hint: (image_tag(f.object.image(:thumb)) if f.object.image?)
		end
		f.buttons
	end

	index do
		id_column
		column :title
		column :description
		column :previous_price_in_pence
		column :previous_price_in_pence
		column :image
  		default_actions
  	end
end
