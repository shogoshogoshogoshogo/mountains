class Month < ActiveHash::Base
  self.data = (1..12).map { |m| { id: m, name: m } } # 1月から12月
end