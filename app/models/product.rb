class Product < ActiveRecord::Base
  def to_s
    "#{name} (#{brand})"
  end

  def params
    @params
  end

end
