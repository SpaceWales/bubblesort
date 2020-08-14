puts "Enter array of numbers separated by a space:"
arr = []
str = ""
str = gets.chomp
getarr = str.split(/ /)
getarr.map!(&:to_i)

def bubble(sorted)
  arr = sorted.clone
  (arr.length - 1).times do 
    arr.each_with_index do |val,ind|
      next if arr[ind+1].nil?
      left = arr[ind]
      right = arr[ind + 1]
      #p "left: #{left}"
      #p "right: #{right}"
      if left > right
        #puts "left > right"
        arr[ind] = right
        arr[ind + 1] = left
        #p "left becomes #{arr[ind]}"
        #p "right becomes #{arr[ind + 1]}"
      else
      end
    end
  end
  return arr
end

newarr = bubble(getarr)

p newarr


