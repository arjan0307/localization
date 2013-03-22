class HasEnoughValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if record.errors.empty?
      record.errors.add(attribute, 'Niet genoeg doekoes') unless value <= 100000.50
    end
  end
end
