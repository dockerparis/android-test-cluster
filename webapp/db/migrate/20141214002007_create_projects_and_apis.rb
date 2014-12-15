class CreateProjectsAndApis < ActiveRecord::Migration
  def change
    create_table :apis_projects, id: false do |t|
      t.belongs_to :project
      t.belongs_to :api
    end
  end
end
