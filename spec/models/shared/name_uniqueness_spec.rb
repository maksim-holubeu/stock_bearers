RSpec.shared_examples "name uniqueness preserved" do |name|
  describe "#name" do
    context "uniqueness" do
      let(:create_record) { create(described_class.name.downcase.to_sym, name: name) }

      before do
        create_record
      end

      it "preserved" do
        expect { create_record }.not_to change(described_class, :count)
      end
    end
  end
end

