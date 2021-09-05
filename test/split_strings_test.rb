require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/split_strings'
require 'json'
require 'pry'

class SplitStringsTest < MiniTest::Test
    def setup
        @string_splitter = SplitStrings.new
    end

    def test_list
        assert_equal ["ab", "cd", "ef"], @string_splitter.split("abcdef")
        assert_equal ["ab", "cd", "ef", "g_"], @string_splitter.split("abcdefg")
        assert_equal [], @string_splitter.split("")
    end
end