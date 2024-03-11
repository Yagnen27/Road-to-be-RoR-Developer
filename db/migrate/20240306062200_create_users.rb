class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :user do |t|

      t.timestamps
    end
  end
end
