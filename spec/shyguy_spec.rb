# frozen_string_literal: true

RSpec.describe Shyguy do
  it 'has a version number' do
    expect(Shyguy::VERSION).not_to be nil
  end

  it 'displays a shy verson of a string using a class method' do
    expect(
      Shyguy.display_shy('Holta|vörðu|heiði')
    ).to eq(
      "Holta#{Shyguy::SYMBOL}vörðu#{Shyguy::SYMBOL}heiði"
    )
  end

  it 'displays a stripped verson of a string using a class method' do
    expect(
      Shyguy.display_stripped('Holta|vörðu|heiði')
    ).to eq(
      'Holtavörðuheiði'
    )
  end

  it 'displays a shy version using an instance method' do
    s = Shyguy.new('Holta|vörðu|heiði')
    expect(s.shy).to eq("Holta#{Shyguy::SYMBOL}vörðu#{Shyguy::SYMBOL}heiði")
  end

  it 'displays a stripped version using an instance method' do
    s = Shyguy.new('Holta|vörðu|heiði')
    expect(s.stripped).to eq('Holtavörðuheiði')
  end
end
