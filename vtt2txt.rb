#!ruby

valid_texts = []

while line = gets
    line.strip!
    if line =~ /-->/
        valid_texts << gets.strip
    end
end

lastline = nil
valid_texts.each do |line|
    if line != lastline
        puts line
        lastline = line
    end
end

