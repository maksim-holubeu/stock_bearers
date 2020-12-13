require 'rails_helper'

RSpec.describe Bearer, type: :model do
  describe "#name" do
    context "uniqueness" do
      let(:name) { "some cool name" }
      let(:create_bearer) { create(:bearer, name: name) }

      before do
        create_bearer
      end

      it "preserved" do
        expect { create_bearer }.not_to change(Bearer, :count)
      end
    end
  end
end
