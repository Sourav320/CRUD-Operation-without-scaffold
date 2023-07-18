class User < ApplicationRecord
    def how_old_itis
        # "I'm"+" "+self.age.to_s+" years old"
        "I'm #{self.age.to_s} old"
    end

end
