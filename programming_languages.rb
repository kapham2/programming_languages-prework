def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |lang, type_hash|
      type_hash.each do|type, value|
        new_hash[lang] = {type => value}
        new_hash[lang][:style].push(style)
      end
    end
  end

  puts new_hash
  new_hash
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
reformat_languages(languages)