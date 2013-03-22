class Deposit
  include ActiveAttr::Model
  include I18n::Alchemy

  attribute :reason
  attribute :amount, type: BigDecimal

  localize :amount, using: :number

  validates :reason, :amount, presence: true

  validates :amount, numericality: true, has_enough: true
end
