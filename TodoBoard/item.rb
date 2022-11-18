class Item

    # def self.valid_date?(date_string)
    #     begin
    #       ymd = date_string.split('-')
    
    #       ymd.each_with_index do |ele, i|
    #         ele = ele.to_i
    #         raise ArgumentError if i == 1 && (ele < 1 || ele > 12)
    #         raise ArgumentError if i == 2 && (ele < 1 || ele > 31)
    #       end
    #       return true
    #     rescue
    #       return false
    #     end
    #   end

    def self.valid_date?(date_string)
        date_arr = date_string.split("-")
        if date_arr[0].length == 4 && (1..12).include?(date_arr[1].to_i) && (1..31).include?(date_arr[2].to_i)
            return true
        end
        return false
    end

    attr_accessor :title, :deadline :description

    def initialize(title, deadline, description)
        @title = title
        Item.valid_date?(deadline) ? @deadline = @deadline : (raise Exception.new"invalidDate")
        @description = description
    end

    
end