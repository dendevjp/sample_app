json.extract! taskitem, :id, :itemid, :itemstatus, :itemtitle, :itemdetail, :itemcharge, :created_at, :updated_at
json.url taskitem_url(taskitem, format: :json)
