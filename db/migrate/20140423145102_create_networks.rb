class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name, null: false
      t.uuid   :uuid, null: false, default: "uuid_generate_v4()"

      t.timestamps
    end

    add_index :networks, :uuid, :unique => true
  end
end
