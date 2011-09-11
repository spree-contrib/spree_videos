Product.class_eval do
  has_many :videos,
  :order => 'videos.position ASC'
end