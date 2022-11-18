class Item

    def self.valid_date?(date_string)
      ymd = date_string.split("-")
      return false if ymd.length != 3
      return false if ymd[0].length != 4
      return false if ymd[1].length != 2 
      return false if ymd[2].length != 2 

    end
end