class BaseTables < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :note
      t.string :edition
      t.string :volume
      t.timestamps
    end

    create_table :authors do |t|
      t.string :name
      t.datetime :birth_date
      t.string :place_of_birth
      t.datetime :death_date
      t.string :place_of_death
      t.string :note
      t.timestamps
    end

    create_table :publishers do |t|
      t.string :name
      t.string :address
      t.string :note
      t.timestamps
    end

    create_table :editors do |t|
      t.string :name
      t.timestamps
    end

    create_table :series do |t|
      t.string :name
      t.integer :number_of_volumes
      t.string :note
      t.timestamps
    end
  end
end
