# # t = Thread.new { puts 10**10 }
# # puts "hello"
# # t.join
#
# #
# # threads = []
# # 10.times {
# #   threads << Thread.new { puts 1 }
# # }
# # threads.each(&:join)
#
#
# Thread.new { raise 'hell' }


require 'concurrent'

$stdout.sync = true

pool = Concurrent::FixedThreadPool.new(100000)

600851475143.times do |url|
  pool.post {
    puts "fetching url..."
    sleep(1)
    puts "Done."
  }
end

pool.shutdown
pool.wait_for_termination
