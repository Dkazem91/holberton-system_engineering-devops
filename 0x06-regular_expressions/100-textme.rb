#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=from:)\S*(?<!\])|(?<=to:).?\d{10,11}|(?<=flags:)\S*(?<!\])/).join(',')
