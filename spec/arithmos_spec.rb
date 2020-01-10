RSpec.describe Arithmos do
  it "has a version number" do
    expect(Arithmos::VERSION).to eq("0.1.0")
  end

  it "does include to Numeric class" do
    expect(Numeric.ancestors).to include(Arithmos)
  end

  it "does implement #greek for every numeric" do
    expect(rand(-999_999..999_999)).to respond_to(:greek)
  end

  it "adds a table of greek symbols" do
    expect(Numeric::GREEK_SYMBOLS).to be_a(Hash)
  end

  it "adds a table of greek symbols" do
    expect(Numeric::GREEK_SYMBOLS).to be_a(Hash)
  end

  describe "#greek" do
    subject { number.greek }

    context "number is lesser than 1" do
      let(:number) { rand(-999_999..0) }

      it { expect{subject}.to raise_error(Arithmos::Error) }
    end

    context "number is greater than 999" do
      let(:number) { rand(999..999_999) }

      it { expect{subject}.to raise_error(Arithmos::Error) }
    end

    describe "digits" do
      context "1" do
        let(:number) { rand(0..99) * 10 + 1 }

        it { is_expected.to match(/α$/) }
      end

      context "2" do
        let(:number) { rand(0..99) * 10 + 2 }

        it { is_expected.to match(/β$/) }
      end

      context "3" do
        let(:number) { rand(0..99) * 10 + 3 }

        it { is_expected.to match(/γ$/) }
      end

      context "4" do
        let(:number) { rand(0..99) * 10 + 4 }

        it { is_expected.to match(/δ$/) }
      end

      context "5" do
        let(:number) { rand(0..99) * 10 + 5 }

        it { is_expected.to match(/ε$/) }
      end

      context "6" do
        let(:number) { rand(0..99) * 10 + 6 }

        it { is_expected.to match(/ϛ$/) }
      end

      context "7" do
        let(:number) { rand(0..99) * 10 + 7 }

        it { is_expected.to match(/ζ$/) }
      end

      context "8" do
        let(:number) { rand(0..99) * 10 + 8 }

        it { is_expected.to match(/η$/) }
      end

      context "9" do
        let(:number) { rand(0..99) * 10 + 9 }

        it { is_expected.to match(/θ$/) }
      end

      context "10" do
        let(:number) { rand(0..9) * 100 + 10 + rand(0..9) }

        it { is_expected.to match(/ι/) }
      end

      context "20" do
        let(:number) { rand(0..9) * 100 + 20 + rand(0..9) }

        it { is_expected.to match(/κ/) }
      end

      context "30" do
        let(:number) { rand(0..9) * 100 + 30 + rand(0..9) }

        it { is_expected.to match(/λ/) }
      end

      context "40" do
        let(:number) { rand(0..9) * 100 + 40 + rand(0..9) }

        it { is_expected.to match(/μ/) }
      end

      context "50" do
        let(:number) { rand(0..9) * 100 + 50 + rand(0..9) }

        it { is_expected.to match(/ν/) }
      end

      context "60" do
        let(:number) { rand(0..9) * 100 + 60 + rand(0..9) }

        it { is_expected.to match(/ξ/) }
      end

      context "70" do
        let(:number) { rand(0..9) * 100 + 70 + rand(0..9) }

        it { is_expected.to match(/ο/) }
      end

      context "80" do
        let(:number) { rand(0..9) * 100 + 80 + rand(0..9) }

        it { is_expected.to match(/π/) }
      end

      context "90" do
        let(:number) { rand(0..9) * 100 + 90 + rand(0..9) }

        it { is_expected.to match(/ϙ/) }
      end

      context "100" do
        let(:number) { 100 + rand(0..99) }

        it { is_expected.to match(/ρ/) }
      end

      context "200" do
        let(:number) { 200 + rand(0..99) }

        it { is_expected.to match(/σ/) }
      end

      context "300" do
        let(:number) { 300 + rand(0..99) }

        it { is_expected.to match(/τ/) }
      end

      context "400" do
        let(:number) { 400 + rand(0..99) }

        it { is_expected.to match(/υ/) }
      end

      context "500" do
        let(:number) { 500 + rand(0..99) }

        it { is_expected.to match(/φ/) }
      end

      context "600" do
        let(:number) { 600 + rand(0..99) }

        it { is_expected.to match(/χ/) }
      end

      context "700" do
        let(:number) { 700 + rand(0..99) }

        it { is_expected.to match(/ψ/) }
      end

      context "800" do
        let(:number) { 800 + rand(0..99) }

        it { is_expected.to match(/ω/) }
      end

      context "900" do
        let(:number) { 900 + rand(0..99) }

        it { is_expected.to match(/ϡ/) }
      end
    end
  end
end
