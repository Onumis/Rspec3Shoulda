class CreateSessions < ActiveRecord::Migration
  def up
    create_table :sessions do |t|
      t.datetime   :start_time, null: false
      t.column     :duration,   :interval
      t.references :network,    null: false
      t.uuid       :uuid,       null: false, default: "uuid_generate_v4()"

      t.timestamps
    end

    execute "ALTER TABLE ONLY sessions ALTER COLUMN created_at SET DEFAULT (now() at time zone 'UTC')"
    execute "ALTER TABLE ONLY sessions ALTER COLUMN updated_at SET DEFAULT (now() at time zone 'UTC')"

    constrain :sessions do |t|
      t.network_id reference: { networks: :id }
    end

    add_index :sessions, :uuid,        unique: true
    add_index :sessions, :network_id

  end

  def down
    remove_index :sessions, :network_id
    remove_index :sessions, :uuid

    deconstrain :sessions do |t|
      t.network_id :reference
    end

    drop_table :sessions
  end
end
