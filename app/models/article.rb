class Article < ApplicationRecord
    include Visible
  
    # If you delete an article, its associated comments will also need to be deleted,
    # otherwise they would simply occupy space in the database. 
    # Rails allows you to use the dependent option of an association to achieve this.
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  