json.array!(@tenders) do |tender|
  json.extract! tender, :id, :tender_details, :tender_publish_date, :tender_due_date
  json.url tender_url(tender, format: :json)
end
