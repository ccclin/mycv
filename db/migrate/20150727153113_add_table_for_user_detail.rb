class AddTableForUserDetail < ActiveRecord::Migration
  def change
    create_table :info do |t|
      t.integer :user_id
      t.string :name
      t.string :phone
      t.string :address
      t.timestamps
    end

    create_table :edubg do |t|
      t.integer :user_id
      t.string :school_name
      t.timestamps
    end

    create_table :jobbg do |t|
      t.integer :user_id
      t.string :work_name
      t.integer :years
      t.timestamps
    end

    create_table :skill do |t|
      t.integer :user_id
      t.string :name
      t.timestamps
    end

    create_table :myself do |t|
      t.integer :user_id
      t.text :context
      t.timestamps
    end

    create_table :colle do |t|
      t.integer :user_id
      t.string :name
      t.text :context
      t.string :website
      t.timestamps
    end
  end
end
