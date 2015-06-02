class Url < ActiveRecord::Base

  def generate_key
    self.key = self.id.to_i.to_s(36)
    self.save
  end

  def shorten

  end

end
