Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id, unique: true
      String :name, null: false
      String :password, null: false

    end
  end
end