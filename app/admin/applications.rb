ActiveAdmin.register Application do

    menu priority: 6

    permit_params :user_id, :publication_id, :contenido, :created_at, :updated_at, :publication_id, :user_id

index do
    selectable_column
    id_column
    column :contenido
    column :premios
    column :created_at
    actions
  end

end
