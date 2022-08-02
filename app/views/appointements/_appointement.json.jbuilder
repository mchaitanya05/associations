json.extract! appointement, :id, :appointment_date, :Patient_id, :Physician_id, :created_at, :updated_at
json.url appointement_url(appointement, format: :json)
