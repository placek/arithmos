require "arithmos/version"

module Arithmos
  class Error < StandardError; end

  GREEK_SYMBOLS = {
    900 => 'ϡ', 800 => 'ω', 700 => 'ψ', 600 => 'χ', 500 => 'φ',
    400 => 'υ', 300 => 'τ', 200 => 'σ', 100 => 'ρ', 90 => 'ϙ',
    80 => 'π', 70 => 'ο', 60 => 'ξ', 50 => 'ν', 40 => 'μ', 30 => 'λ',
    20 => 'κ', 10 => 'ι', 9 => 'θ', 8 => 'η', 7 => 'ζ', 6 => 'ϛ',
    5 => 'ε', 4 => 'δ', 3 => 'γ', 2 => 'β', 1 => 'α'
  }.freeze

  def greek
    raise Error if self < 1
    raise Error if self > 999
    multiplier = self
    symbol = []
    GREEK_SYMBOLS.each_with_index do |(num, sym), count|
      symbol.push(sym * (multiplier / num))
      multiplier %= num
    end
    symbol.join
  end
end

class Numeric
  include Arithmos
end
