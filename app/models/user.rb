class User < ActiveRecord::Base
  enum status: [ :member, :support ]

  has_many :messages
end
