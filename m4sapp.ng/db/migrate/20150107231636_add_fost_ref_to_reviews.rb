class AddFostRefToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :fost, index: true
    add_foreign_key :reviews, :fosts
  end
end
