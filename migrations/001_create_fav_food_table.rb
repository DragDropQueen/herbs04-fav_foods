Sequel.migration do
  up do
    create_table(:fav_food) do
      primary_key :id
      String :name, :null=>false
    end
  end

  down do
    drop_table(:fav_food)
  end
end
