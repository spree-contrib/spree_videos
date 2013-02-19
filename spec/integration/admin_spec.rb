require 'spec_helper'

describe 'admin functionality', js: true do
  stub_authorization!

  before { @product = create :product, :on_hand => 1, :name => "The Product" }
  let(:product) { @product }

  it "should list videos associated with a product" do

  end

  it "should properly add a video to a " do
    visit spree.new_admin_product_video_path(product)
    fill_in 'video_youtube_ref', :with => '0IJoKuTlvuM'
    click_button 'Update'

    page.should have_content('Video has been successfully created!')
    page.should have_content('0IJoKuTlvuM')
  end
end