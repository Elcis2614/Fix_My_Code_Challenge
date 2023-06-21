###
#  
#  Sort integer arguments (ascending) 
#  
###
   
result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/
    
    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            j = i
            while i < l do 
              x = result[j]
              result.insert(j, i_arg)
              i_arg = x
              j += 1
            result << i_arg
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end
puts result
