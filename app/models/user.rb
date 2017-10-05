class User < ActiveRecord::Base
    MAILREGEX = /\A[\w.-]{1,30}@\w[\w.-]{0,20}.[\w.]{2,10}\z/
    validates :first_name, :last_name, presence: true, length: { in: 2..250 }
    validates_numericality_of :age, greater_than: 10, less_than: 150, presence: true
    validates :email, format: {with: MAILREGEX}
end
