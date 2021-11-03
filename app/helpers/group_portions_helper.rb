# frozen_string_literal: true

module GroupPortionsHelper
  def saved_portion(value)
    return value unless value.nil?

    0
  end
end
