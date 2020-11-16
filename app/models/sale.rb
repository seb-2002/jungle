class Sale < ActiveRecord::Base
  def self.active?
    where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)
  end
  def done?
    ends_on < Date.current
  end
  def upcoming?
    starts_on > Date.current
  end
  def active?
  ends_on >= Date.current && starts_on <= Date.current
  end
end
