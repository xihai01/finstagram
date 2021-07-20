def yellow_pager(input_string)
    string = input_string.upcase
    print "The phone number is: "
    string.each_char { |c| 
        if c == 'A'|| c == 'B'|| c == 'C'
            print 2
        elsif c == 'D' || c == 'E' || c == 'F'
            print 3
        elsif c == 'G' || c == 'H' || c == 'I'
            print 4
        elsif c == 'J' || c == 'K' || c == 'L'
            print 5
        elsif c == 'M' || c == 'N' || c == 'O'
            print 6
        elsif c == 'P' || c == 'Q' || c =='R' || c == 'S'
            print 7
        elsif c == 'T' || c == 'U' || c == 'V'
            print 8
        elsif c == 'W' || c == 'X' || c == 'Y' || c == 'Z'
            print 9
        end
        }
end


#Make sure its a 10 character string
input_string = "helloworld"

if input_string.length == 10
    #Execute code
    yellow_pager(input_string)
    print "\n"
else
    #string must be 10 characters
    print "Invalid input. String must be 10 characters \n"
end

