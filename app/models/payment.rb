class Payment < ActiveRecord::Base
  include I18n::Alchemy

  attr_accessible :amount, :description, :discount, :name

  validates :name, :amount, presence: true

  validates :discount, :amount, numericality: true, allow_blank: true

  validates :amount, has_enough: true

end
