class CreatePlugDemoPlugs < ActiveRecord::Migration[5.1]
  def change
    create_table :plug_demo_plugs do |t|
      t.string :name
      t.text :comments

      t.timestamps
    end
  end
end
