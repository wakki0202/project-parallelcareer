class Detail < ApplicationRecord
  belongs_to :provider, optional: true, foreign_key: "provider_id"
  belongs_to :user, optional: true, foreign_key: "user_id"
end
