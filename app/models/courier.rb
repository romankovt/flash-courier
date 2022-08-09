# frozen_string_literal: true

class Courier < ApplicationRecord
  # after_create_commit -> do
  #   broadcast_prepend_to "courier_list", partial: "couriers/courier", locals: { courier: self }, target: "couriers"
  # end
  # or shorter equivalent:
  after_create_commit -> { broadcast_prepend_to "courier_list" }
  after_update_commit -> { broadcast_replace_to "courier_list" }
  after_destroy_commit -> { broadcast_remove_to "courier_list" }
  # cant be shorten to:
  # broadcasts_to ->(courier) { "courier_list" }, inserts_by: :prepend

  STATUSES = ["active", "blocked"].freeze

  validates :phone, presence: true
  validates :first_name, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :phone, presence: true, uniqueness: true
end
