# frozen_string_literal: true

require_relative "parsnip/version"
require_relative "parsnip/parser"

module Parsnip
  def self.example
    puts Parser.new.parse("123432")
  end
end
