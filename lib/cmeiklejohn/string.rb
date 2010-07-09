# 
# Hack to add in 1.8.6 support for ruby.  Doesn't work in 1.8.6 unless 
# active support is loaded, since each_char isn't available until 1.8.7
#
class String
  def each_char
    self.split("").each { |i| yield i }
  end
end
