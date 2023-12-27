require "parslet"

module Parsnip
  class Parser < Parslet::Parser
    rule(:integer) { match("[0-9]").repeat(1) >> space? }
    root(:integer)

    rule(:space) { match('\s').repeat(1) }
    rule(:space?) { space.maybe }

    rule(:operator) { match("[+]") >> space? }

    rule(:sum) { integer >> operator >> expression }
    rule(:expression) { sum | integer }

    root(:expression)
  end
end
