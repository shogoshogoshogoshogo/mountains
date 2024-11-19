class Year < ActiveHash::Base
  self.data = (2000..Date.today.year).map { |y| { id: y, name: y } } # 2000年から現在まで
end