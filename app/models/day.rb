class Day < ActiveHash::Base
  self.data = (1..31).map { |d| { id: d, name: d } } # 1日から31日
end