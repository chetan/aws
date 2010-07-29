# 
# Hack to add in 1.8.6 support for ruby.  Doesn't work in 1.8.6 unless 
# active support is loaded, since each_char isn't available until 1.8.7
#
class String
 def each_char
    if block_given?
      scan(/./m) do |x|
        yield x
      end
    else
      scan(/./m)
    end
  end
end
