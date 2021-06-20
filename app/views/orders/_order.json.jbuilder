json.extract! order, :id, :name, :cid, :contact_number, :email, :address, :product_id, :created_at, :updated_at
json.url order_url(order, format: :json)
