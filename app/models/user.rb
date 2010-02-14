class User < ActiveRecord::Base
    acts_as_authentic do |c|
    end
    

    def active?
      return true
    end

end
