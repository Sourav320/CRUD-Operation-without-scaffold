class User < ApplicationRecord
    # before_action:authenticate_user!
    def how_old_itis
        # "I'm"+" "+self.age.to_s+" years old"
        "I'm #{self.age.to_s} old"
    end
    validates :name, presence: true
    validates :age, presence: true, length: {maximum: 2}
    validates :phone_no, presence: true, length: {minimum:10}
    validates :email, presence:true  
    

    has_many :books

    has_one_attached :image 

    # VALID_STATUS = ['public', 'private', 'archived']
    
    # validates :status, inclusion: { in: VALID_STATUS }
     
    # def archived?
    #     status == 'archived'
    # end
end
