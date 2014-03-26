class AddEmbedUrl1ToContent < ActiveRecord::Migration
  def change
    add_column :contents, :embed_url_1, :string
  end
end
