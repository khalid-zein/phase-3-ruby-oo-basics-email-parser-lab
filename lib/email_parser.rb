# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



require 'pry'

class EmailAddressParser

    attr_accessor :string

    def initialize(string)
        @string = string
    end

    def parse
        x = @string.split(/[, ]/)
        y = x.reject{|element| element.empty?}
        z = y.uniq
    end

end

puts EmailAddressParser.new("john@doe.com, person@somewhere.org").parse

puts EmailAddressParser.new("john@doe.com person@somewhere.org").parse
