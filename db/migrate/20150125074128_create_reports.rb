class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	t.integer :attendance
    	t.integer :lessonNum

    	t.integer :pq1Score
    	t.integer :pq2Score
    	t.integer :q1Score
    	t.integer :q2Score
    	t.integer :q3Score

	    t.references :school, index: true

	    t.timestamps null: false
    end
    add_foreign_key :reports, :schools
  end
end
