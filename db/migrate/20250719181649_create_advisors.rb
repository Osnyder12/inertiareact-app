class CreateAdvisors < ActiveRecord::Migration[7.1]
  def change
    create_table :advisors do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
