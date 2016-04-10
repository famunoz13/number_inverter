require 'spec_helper'

describe NumberInverter do
  it 'has a version number' do
    expect(NumberInverter::VERSION).not_to be nil
  end

  it 'inverts integer numbers' do
    expect(NumberInverter.invert(123)).to eq(321)
    expect(NumberInverter.invert(-123)).to eq(-321)
  end

  it 'inverts float numbers' do
    expect(NumberInverter.invert(123.45)).to eq(54.321)
    expect(NumberInverter.invert(-123.45)).to eq(-54.321)
  end
end
