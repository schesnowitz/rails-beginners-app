class AddLinkToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :gist_link, :string
  end
end
