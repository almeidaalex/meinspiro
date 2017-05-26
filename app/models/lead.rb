class Lead < ApplicationRecord
    
    def to_csv
       "#{email},#{firstName},#{userIP},#{created_at.strftime("%Y-%m-%d %T")}"
    end
end
