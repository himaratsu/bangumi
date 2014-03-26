class AddEmbedUrl3ToContent < ActiveRecord::Migration
  def change
    add_column :contents, :embed_url_3, :string
  end
end
