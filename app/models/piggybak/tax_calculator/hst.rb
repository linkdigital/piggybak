module Piggybak
  class TaxCalculator::Hst

    KEYS = ["rate"]

    def self.description
      "HST"
    end

    def self.available?(method, object)
      return true
    end

    def self.rate(method, object)
      taxable_total = 0

      if object.is_a?(Cart)
        taxable_total = object.total
      else
        taxable_total = object.subtotal
      end

      (0.13 * taxable_total).to_c
    end
  end
end
