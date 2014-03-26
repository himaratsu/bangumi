class AddEmbedUrl2ToContent < ActiveRecord::Migration
  def change
    add_column :contents, :embed_url_2, :string
  end
end
