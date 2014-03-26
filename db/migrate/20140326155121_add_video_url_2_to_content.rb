class AddVideoUrl2ToContent < ActiveRecord::Migration
  def change
    add_column :contents, :video_url_2, :string
  end
end
