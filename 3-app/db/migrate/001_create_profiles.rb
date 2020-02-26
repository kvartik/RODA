Sequel.migration do
  change do
    create_table(:profules) do
      primary_key :id, unique: true
      foreign_key :user_id, :users, null: false

      String :first_name, null: false
      String :last_name, nill: false
      String :email, unique: true, null: false

      DateTime :created_at, null: false
      DateTime :updated_at, null: false

    end
  end
end