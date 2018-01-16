class Post < ApplicationRecord
  belongs_to :category, required: false
  belongs_to :user, required: false
  has_many :comments

  # validates :title, :body, presence:true
  validates :title, presence:true
  validates :category_id, presence:true
  validates :body, presence:true


  has_attached_file :image, :default_url => ":style/post1.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

  def category_name
    try(:category).try(:name)
  end

  def self.search(query)
    where("title like ? OR body like ?", "%#{query}%",  "%#{query}%" )
  end
end









































