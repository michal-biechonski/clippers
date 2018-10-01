# frozen_string_literal: true

require "clippers"

RSpec.describe Clippers do
  it "has a version number" do
    expect(Clippers::VERSION).not_to be nil
  end
end

RSpec.describe Clippers::Roster do
  let!(:lineup) { subject.class.starting_five }

  describe ".starting_five" do
    let(:players) do
      Clippers::Roster.constants
        .reject { |cons| cons == :COACH }
        .map { |cons| Clippers::Roster.const_get(cons) }
    end
    let(:players_with_positions) { Hash[[:pg, :sg, :sf, :pf, :c].zip players] }  
    
    it "returns starting five" do
      expect(lineup).to eq players_with_positions
    end
  end

  let!(:coach) { subject.class.coach }

  describe ".coach" do
    it "returns coach upcase" do
      expect(coach).to eq Clippers::Roster::COACH.upcase
    end
  end
end
