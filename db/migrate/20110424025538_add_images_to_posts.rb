class AddImagesToPosts < ActiveRecord::Migration
  def self.up
    add_column :microposts, :image_file_name, :string
    add_column :microposts, :image_content_type, :string # Mime type
    add_column :microposts, :image_file_size, :integer # File size in bytes
  end

  def self.down
    remove_column :microposts, :image_file_name
    remove_column :microposts, :image_content_type
    remove_column :microposts, :image_file_size
  end
end
