# This program reads an array of strings and a
# start string, then tells you which strings in
# the array start with the start string
# By Joel Coons, 2/4/2024

def search_prefix(original_array, string_start)
    new_array = []
    end_range = string_start.length
    original_array.each do |element|
        if element[0...end_range] == string_start
            new_array.push(element)
        end
    end
    return new_array
end

print("Enter an array: ")
my_array = gets.chomp.delete("[]\"").split(", ")
print("Starts with: ")
my_start = gets.chomp
print(search_prefix(my_array, my_start), "\n")