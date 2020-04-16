class AddImgToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :img, :text, :default => "https://res.cloudinary.com/drpyvuhac/image/upload/v1587049947/7cc572738e4520c7da35ed6fcc1ebaf7_free-cliparts-natural-hair-download-free-clip-art-free-clip-art-_500-750_mhzqmw.jpg"
  end
end
