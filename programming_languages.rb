require 'pry'

def reformat_languages(languages)
  newhash = Hash.new
  languages.each do |style, data|
    data.each do |program, data2|
      data2.each do |type, thetype|
        newhash[:"#{program}"]={type:"#{thetype}", style:[]}
        if languages.dig(:functional).include?(:"#{program}") && languages.dig(:oo).include?(:"#{program}")
          newhash[:"#{program}"][:style].push(:functional, :oo)

          elsif languages.dig(:oo).include?(:"#{program}")
          newhash[:"#{program}"][:style] << :oo

        elsif languages.dig(:functional).include?(:"#{program}")
          newhash[:"#{program}"][:style] << :functional

      end
    end
    end
  end
return newhash
end
