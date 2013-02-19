require 'spec_helper'

describe 'video display' do
  before { @product = create :product, :on_hand => 1, :name => "The Product" }
  let(:product) { @product }

  it "should display no video player when no videos exist" do
    visit spree.product_path(product)
    page.should_not have_css('#product-videos')
  end

  it "should display a single video without thumbnails on a product page" do
    v = product.videos.build
    v.youtube_ref = 'iJ4T9CQA0UM'
    v.save!

    visit spree.product_path(product)

    page.should have_css('#product-videos')
    page.should have_css('#video-player')
    page.should_not have_css('#video-thumbnails')
  end

  it "should display a player with multiple thumbnails when multiple thumbnails exist" do
    v = product.videos.build
    v.youtube_ref = 'iJ4T9CQA0UM'
    v.save!

    v = product.videos.build
    v.youtube_ref = '1bmQS_DGe8M'
    v.save!

    visit spree.product_path(product)

    page.should have_css('#product-videos')
    page.should have_css('#video-player')
    page.should have_css('#video-thumbnails')
  end
end