class Detail < ApplicationRecord
  belongs_to :work, optional: true, foreign_key: "work_id"
  belongs_to :user, optional: true, foreign_key: "user_id"
end
