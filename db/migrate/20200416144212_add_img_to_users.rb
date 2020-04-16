class AddImgToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :img, :text, :default => "https://res.cloudinary.com/drpyvuhac/image/upload/v1587049780/default_profile_photo_vo9xhs.png"
  end
end
