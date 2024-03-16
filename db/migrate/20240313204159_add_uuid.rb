class AddUuid < ActiveRecord::Migration[7.1]
  def change
    change_column_default :authors, :id, from: nil, to: -> { "gen_random_uuid()" }
    change_column_default :books, :id, from: nil, to: -> { "gen_random_uuid()" }
    change_column_default :editors, :id, from: nil, to: -> { "gen_random_uuid()" }
    change_column_default :publishers, :id, from: nil, to: -> { "gen_random_uuid()" }
    change_column_default :series, :id, from: nil, to: -> { "gen_random_uuid()" }
  end
end
