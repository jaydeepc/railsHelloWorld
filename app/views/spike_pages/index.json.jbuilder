json.array!(@spike_pages) do |spike_page|
  json.extract! spike_page, :id
  json.url spike_page_url(spike_page, format: :json)
end
