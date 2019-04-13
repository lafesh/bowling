require_relative 'score'

RSpec.describe Score do
    subject { described_class.new }

    describe '#get_total' do
        it "scores 300 when it is all strikes" do
            expect(subject.get_total("X-X-X-X-X-X-X-X-X-X-XX"))
            .to eq 300
        end

        it "scores 150 when its all 5 and spares" do
            expect(subject.get_total("5/-5/-5/-5/-5/-5/-5/-5/-5/-5/-5"))
            .to eq 150
        end

        it "returns the total for regular throws (no strikes, spares)" do
            expect(subject.get_total("45-54-36-27-09-63-81-18-90-72"))
            .to eq 90
        end

        it "returns the total for a mix of regular throws and spares" do
            expect(subject.get_total("45-54-36-27-09-63-81-18-90-7/-5"))
            .to eq 96
        end

        it "returns the total for a mix of regular throws, spares with strike at the end" do
            expect(subject.get_total("14-45-6/-5/-X-01-7/-6/-X-2/-X"))
            .to eq 137
        end

        it "returns the total" do
            expect(subject.get_total("14-45-6/-5/-X-01-7/-6/-X-2/-6"))
            .to eq 133
        end
    end
end