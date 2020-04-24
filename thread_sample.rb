# t = Thread.new { puts 10**10 }
# puts "hello"
# t.join

# 
# threads = []
# 10.times {
#   threads << Thread.new { puts 1 }
# }
# threads.each(&:join)


Thread.new { raise 'hell' }
