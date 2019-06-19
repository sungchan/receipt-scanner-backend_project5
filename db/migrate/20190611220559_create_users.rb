class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_url, :default => "https://res.cloudinary.com/sungchan/image/upload/v1560829909/00-ELASTOFONT-STORE-READY_user-circle-512_bg2kgc.png"
      t.string :password

      t.timestamps
    end
  end
end
