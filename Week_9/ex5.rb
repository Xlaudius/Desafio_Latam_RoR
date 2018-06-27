class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    @h = {
      _0: '-----',
      _1: '.----',
      _2: '..---',
      _3: '...--',
      _4: '....-',
      _5: '.....',
      _6: '-....',
      _7: '--...',
      _8: '---..',
      _9: '----.'
    }
  end

  def to_morse
    generate_hash(@number)
    key = '_' + @number.to_s
    @h[key.to_sym]
  end
end

m = Morseable.new(3)
print m.to_morse
