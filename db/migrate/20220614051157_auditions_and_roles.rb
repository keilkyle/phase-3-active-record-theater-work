class AuditionsAndRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :actor
      t.integer :phone
      t.string :location
      t.boolean :hired
      t.integer :role_id
    end

    create_table :roles do |t|
      t.string :character_name
    end
  end
end
