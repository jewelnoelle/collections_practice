require 'pry'

def sort_array_asc(array)
    array.sort do |a, b|
    a <=> b
    end
end

def sort_array_desc(array)
    array.sort.reverse do |a, b|
    a <=> b
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    temp = array[1]
    array[1] = array[2]
    array[2] = temp
    array
end

def reverse_array(array)
    reversed_array = array.reverse
    reversed_array
end
    
def swap_elements_from_to(array, index, destination_index)
    array[index] = temp
    array[index] = array[destination_index]
    array[destination_index] = temp
end

def kesha_maker(array)
    kesha_array = array.each do |element|
        element.split(//)
        element[2] = "$"
    end
    kesha_array
end

def find_a(array)
    a_array = array.select do |element|
        element.start_with?("a")
    end
    a_array
end

def sum_array(array)
    ints_in_array = array.select do |element|
        element.is_a?(Integer)
    end
    ints_in_array
    sum = ints_in_array.inject(0) do |result, element|
        result + element
    end
    sum
end

sum_array(["hello", 1, "hey", 65, "howdy"])

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index != 1
            element[index] = "#{element}" + "s"
        else
            element[index] = "#{element}"
        end
    end
end
