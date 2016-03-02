json.array!(@tophundreds) do |tophundred|
  json.extract! tophundred, :id, :genre, :songname, :artistname, :rank, :lyrics
  json.url tophundred_url(tophundred, format: :json)
end
