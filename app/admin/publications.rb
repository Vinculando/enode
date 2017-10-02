ActiveAdmin.register Publication do

	menu priority: 5

	permit_params :titulo, :problema, :limite, :description, :premios, :company_id, :area_id, :type_id, :created_at, :updated_at, 
			:area_id, :company_id, :type_id

index do
    selectable_column
    id_column
    column :titulo
    column :problema
    column "Empresa", :company_id
    column :premios
    column :created_at
    actions
  end

end
