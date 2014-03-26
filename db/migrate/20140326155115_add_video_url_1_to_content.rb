class AddVideoUrl1ToContent < ActiveRecord::Migration
  def change
    add_column :contents, :video_url_1, :string
  end
end
