class Lead < ApplicationRecord
    
    def to_csv
       "#{email},#{firstName} #{lastName},#{userIP},B2C,#{created_at.strftime("%Y-%m-%d %T")}"
    end
end
