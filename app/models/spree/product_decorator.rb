Spree::Product.class_eval do
  has_many :videos, :order => 'position ASC', :as => :watchable
end