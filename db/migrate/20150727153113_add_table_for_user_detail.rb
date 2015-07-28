class AddTableForUserDetail < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :user_id
      t.string :name
      t.string :english_name
      t.string :phone
      t.string :address
      t.timestamps
    end

    create_table :edubgs do |t|
      t.integer :user_id
      t.string :school_name
      t.string :major_name
      t.timestamps
    end

    create_table :jobbgs do |t|
      t.integer :user_id
      t.string :company_name
      t.string :work_name
      t.integer :years
      t.timestamps
    end

    create_table :skills do |t|
      t.integer :user_id
      t.string :name
      t.timestamps
    end

    create_table :myselfs do |t|
      t.integer :user_id
      t.text :context
      t.timestamps
    end

    create_table :colles do |t|
      t.integer :user_id
      t.string :name
      t.text :context
      t.string :website
      t.timestamps
    end
  end
end
