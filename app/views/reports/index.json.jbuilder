json.array!(@reports) do |report|
  json.extract! report, :id, :player, :description
  json.url report_url(report, format: :json)
end
