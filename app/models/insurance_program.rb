class InsuranceProgram < ApplicationRecord
  has_many :field_classes, dependent: :destroy
  accepts_nested_attributes_for :field_classes, reject_if: :all_blank, allow_destroy: true
end
