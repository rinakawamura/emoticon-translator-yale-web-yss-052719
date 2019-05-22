require 'yaml'

def load_library
  emoticons = YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon(Western)
  Japanese = nil
  emoticons.each do |name, symbols|
    if symbols[0] == Western
      Japanese = symbols[1]
    end
  end
  return Japanese
end

def get_english_meaning
  # code goes here
end
