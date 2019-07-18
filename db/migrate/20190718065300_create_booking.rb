class CreateBooking < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :first_choice
      t.string :second_choice
      t.string :third_choice
      t.integer :num_of_people
      t.boolean :interpreter, default: false
      t.belongs_to :experience, foreign_key: true
      t.string :guest_firstnam
      t.string :guest_lastname
      t.string :guest_title
      t.integer :age
      t.string :nationality
      t.string :language
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :representative_firstname
      t.string :representative_lastname
      t.string :representative_title
      t.string :representative_email
      t.boolean :send_mail_only_representative, default: false
    end
  end
end
