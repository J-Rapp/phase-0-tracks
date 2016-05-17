class TodoList
    def initialize initial_list
        @list = initial_list
    end

    def get_items
        @list
    end

    def get_item passed_index
        @list[passed_index]
    end

    def add_item item
        @list << item
    end

    def delete_item item
        i = @list.index(item)
        if i != nil
            @list.delete_at(i)
        else
            # nothing
        end
    end
end