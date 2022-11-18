class list

    attr_accessor :label

    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description)
        description || = ""

        if Item.new(deadline)
        @item << Item.new(title, deadline, description)
        return true
        else 
            return false
        end
    end

    def size
        return @items.length
    end

    def valid_index?(idx)
    idx <= (size - 1) && index >= 0
    end


    def swap(index1, index2)
        @item[index1], @item[index2] = @item[index2], @item[index1] if valid_index?(index1) && valid_index(index2)
    end

    def [](index)
        return valid_index(index) ? @items[index] : nil
    end

    def priority 
        return @items[0]
    end

    

#     require "item.rb"
# class List
#     attr_accessor :label
#     def initialize(label)
#         @label = label
#         @items = []
#     end

#     def add_item(title, deadline, description)
#         description || = ''
#         if Item.valid_date?(deadline)
#             @items << Item.new(title, deadline, description)
#         end
#     end

#     def size
#         return @items.length
#     end

#     def valid_index?(index)
#         index > (size - 1)||index < 0
#     end

#     def swap(index_1, index_2)
#         @items[index_1], @items[index_2] = @items[index_2], @items[index_1] if valid_index?(index_1) && valid_index?(index_2)
#     end
    
# end


end