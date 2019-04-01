class FieldClass < ApplicationRecord
  belongs_to :insurance_program, optional: true
end
