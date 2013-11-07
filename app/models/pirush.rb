class Pirush < ActiveRecord::Base
  belongs_to :paragraph
end


class Rashi < Pirush
end

class Tosfot < Pirush
end