class AddVideoUrl3ToContent < ActiveRecord::Migration
  def change
    add_column :contents, :video_url_3, :string
  end
end
