class CreatePets < ActiveRecord::Migration[7.2]
  def change
    create_table :pets do |t|
    t.string :name
    t.string :tutor
    t.date :pet_birthdate
    t.string :pet_race
    t.string :tutors_contact
    t.string :pet_coat_color
    t.string :pet_photo
    t.string :pet_city
    t.string :pet_instagram
    t.string :pet_tiktok
      t.timestamps
    end
  end
end
