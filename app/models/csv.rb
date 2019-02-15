class Csv < ActiveRecord::Base
  self.abstract_class = true

  # This would be better to go in a decorator but I don't have the time
  def self.group_per_length(input, col_count)
    result = []

    split_arr = input.split(',')
    group_size = input.length % 8
    (0...8).each do |col_num|
      result << []
    end

    (0...8).each do |col_num|
      (0...3).each do |row_num|
        if result[col_num].length == 2 && col_num > group_size % 3
          result[col_num] << ""
        else
          result[col_num] << split_arr.shift
        end
      end
    end

    result
  end
end