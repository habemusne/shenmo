class ConstructDb < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string, null: false
    add_column :users, :phone_number, :string

    create_table :grades do |t|
      t.string :name, null: false, unique: true
    end

    create_table :children do |t|
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.references :grade, index: true, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamp null: false
    end

    create_table :semesters do |t|
      t.string :name, null: false
    end

    create_table :schools do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
    end

    create_table :week_days do |t|
      t.string :name, null: false
    end

    create_table :courses do |t|
      t.string :name, null: false
      t.text :desc_short
      t.text :desc_long
      t.date :start_date
      t.date :end_date
      t.references :semester, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true
      t.timestamp null: false
    end

    create_table :schedules do |t|
      t.time :start_time
      t.time :end_time
      t.references :week_day, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamp null: false
    end

    create_table :enrollments do |t|
      t.boolean :pass, default: false
      t.boolean :paid, default: false
      t.references :child, foreign_key: true
      t.references :course, foreign_key: true
    end

    create_table :articles do |t|
      t.string :title
      t.string :lead
      t.text :body
      t.date :publish_date
      t.string :caption_url
      t.timestamp null: false
    end

  end
end
