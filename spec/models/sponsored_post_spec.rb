require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }
  let(:price) { rand(100) }
  let(:topic) {Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}
  let(:sponsored_post) { SponsoredPost.create!(title: name, body: description, price: price, topic: topic) }

  it { is_expected.to belong_to(:topic) }
  describe "attributes" do
    it "has a title and body attribute" do
      expect(sponsored_post).to have_attributes(title:name, body: description, price: price)
    end
  end
end
