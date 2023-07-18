class User < ApplicationRecord
    def how_old_itis
        # "I'm"+" "+self.age.to_s+" years old"
        "I'm #{self.age.to_s} old"
    end
    validates :name, presence: true
    validates :age, presence: true, length: {maximum: 2}
    validates :phone_no, presence: true, length: {minimum:10}
  
end
