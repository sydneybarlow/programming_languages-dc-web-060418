require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style_name, languages_hash|
    languages_hash.each do |name, info|
      new_hash[name] ||= {}
      if new_hash[name] == {}
        new_hash[name] = info
        new_hash[name][:style] ||= []
      end
      new_hash[name][:style] << style_name
    end
  end
  new_hash
end


# { :ruby=>{:type=>"interpreted", :style=>[:oo]},
#   :javascript=>{:type=>"interpreted", :style=>[:functional]},
#   :python=>{:type=>"interpreted", :style=>[:oo]},
#   :java=>{:type=>"compiled", :style=>[:oo]},
#   :clojure=>{:type=>"compiled", :style=>[:functional]},
#   :erlang=>{:type=>"compiled", :style=>[:functional]},
#   :scala=>{:type=>"compiled", :style=>[:functional]}
# }
