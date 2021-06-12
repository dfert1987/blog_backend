class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :mainImage
      t.string :category
      t.string :tagOne
      t.string :tagTwo
      t.string :tagThree
      t.integer :thumbsUp
      t.integer :thumbsDown
      t.string :author

      t.timestamps
    end
  end
end
