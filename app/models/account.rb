class Account < ApplicationRecord
  include Rodauth::Model(RodauthMain)
  enum :status, unverified: 1, verified: 2, closed: 3
end
