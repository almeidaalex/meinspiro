class Lead < ApplicationRecord
    
    def to_csv
        "#{email},#{firstName},#{userIP},#{created_at}"
    end
end
