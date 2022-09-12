# ASCII for lowercase is from 97 - 122
# ASCII for uppercase is from 65 - 90
# Above were used when calculating Caesar's cipher.

def caesar_cipher(string, n)
    """
    shift each alphabet of a string by a value of n to create a ciphered text.
    """
    ciphered = ""
    for c in string.split("")
        if c.match?(/[a-z]/)
            if c.ord + n > 122
                ciphered += ((c.ord - 123 + n) % 26 + 97).chr
            else
                ciphered += (c.ord + n).chr
            end
        elsif c.match?(/[A-Z]/)
            if c.ord + n > 90
                ciphered += ((c.ord - 91 + n) % 26 + 65).chr
            else
                ciphered += (c.ord + n).chr
            end
        else
            ciphered += c
        end
    end
    ciphered
end

p caesar_cipher("hello!", 3)
p caesar_cipher("What a string!", 5)