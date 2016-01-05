def prime_factors(num)
  [].tap {|factors|
    (2...num).each do |candidate|
      while num % candidate == 0
        factors << candidate
        num /= candidate
      end
    end
    if num > 1
      factors << num
    end
  }
end

RSpec.describe "Prime Factors" do

  it "has factors of [] for 1" do
    expect(prime_factors(1)).to eq []
  end

  it "has factors of [2] for 2" do
    expect(prime_factors(2)).to eq [2]
  end

  it "has factors of [3] for 3" do
    expect(prime_factors(3)).to eq [3]
  end

  it "has factors of [2,2] for 4" do
    expect(prime_factors(4)).to eq [2,2]
  end

  it "has factors of [5] for 5" do
    expect(prime_factors(5)).to eq [5]
  end

  it "has factors of [2,3] for 6" do
    expect(prime_factors(6)).to eq [2,3]
  end

  it "has factors of [7] for 7" do
    expect(prime_factors(7)).to eq [7]
  end

  it "has factors of [2,2,2] for 8" do
    expect(prime_factors(8)).to eq [2,2,2]
  end

  it "has factors of [3,3] for 9" do
    expect(prime_factors(9)).to eq [3,3]
  end

  it "has factors of [11] for 11" do
    expect(prime_factors(11)).to eq [11]
  end

  it "has factors of [2,5] for 10" do
    expect(prime_factors(10)).to eq [2,5]
  end

  it "has factors of [2,2,3,3,5,11] for 1980" do
    expect(prime_factors(1980)).to eq [2,2,3,3,5,11]
  end

  it "has factors of [2,2,2,2,3,5,7,11,97] for 1792560" do
    expect(prime_factors(1792560)).to eq [2,2,2,2,3,5,7,11,97]
  end

end
