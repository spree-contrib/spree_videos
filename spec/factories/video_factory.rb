FactoryGirl.define do
  factory :video, :class => Spree::Video do |f|
    youtube_ref 'oUKbtfL4wqk'
    f.watchable { |p| p.association(:product) }
  end
end