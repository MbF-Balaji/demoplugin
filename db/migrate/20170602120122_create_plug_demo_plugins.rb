class CreatePlugDemoPlugins < ActiveRecord::Migration[5.1]
  def change
    create_table :plug_demo_plugins do |t|
      t.string :name
      t.text :comments

      t.timestamps
    end
  end
end
