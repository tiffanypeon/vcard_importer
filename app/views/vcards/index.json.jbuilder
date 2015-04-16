json.array!(@vcards) do |vcard|
  json.extract! vcard, :id
  json.url vcard_url(vcard, format: :json)
end
