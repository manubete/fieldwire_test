class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :display_name

      t.timestamps
    end

    create_table :floorplans do |t|
      t.belongs_to :project, index: true
      t.string :display_name
      t.string :image

      t.timestamps
    end

  end
end
