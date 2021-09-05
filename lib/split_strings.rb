class SplitStrings
    def split(string)
        (string << "_").scan(/../)
    end
end