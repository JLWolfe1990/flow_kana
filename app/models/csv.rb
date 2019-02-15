class Csv < ActiveRecord::Base
  self.abstract_class = true

  # This would be better to go in a decorator but I don't have the time
  def self.group_per_length(input, col_count)
    result = []

    split_arr = input.split(',')

    row_mod = split_arr.length % col_count
    row_num =  (split_arr.length / col_count.to_f).ceil

    (0...col_count).each do |col_num|
      result << []
      (0...row_num).each do
        if col_num >= row_mod && row_mod != 0 && result[col_num].length == row_num - 1
          result[col_num] << ""
        else
          result[col_num] << split_arr.shift
        end
      end
    end

    result
  end
end
