ActiveAdmin.register User do
  remove_filter :created_at, :updated_at

  filter :point, as: :numeric_range
  filter :name, label: 'Username'
  filter :country

  index do
    id_column
    column :name
    column :country, as: :string
    column :point
  end
end
