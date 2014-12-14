class CreateProjectsAndApis < ActiveRecord::Migration
  def change
    create_table :projects_and_apis, id: false do |t|
      t.belongs_to :projects
      t.belongs_to :apis
    end
  end
end
