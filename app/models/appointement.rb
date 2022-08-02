class Appointement < ApplicationRecord
  belongs_to :Physician
  belongs_to :Patient
end