# frozen_string_literal: true

module Clippers
  class Roster
    POINT_GUARD = "Austin Rivers".freeze
    SHOOTING_GUARD = "Sindarius Thornwell".freeze
    SMALL_FORWARD = "Wesley Johnson".freeze
    POWER_FORWARD = "Tobias Harris".freeze
    CENTER = "DeAndre Jordan".freeze
    COACH = "Doc Rivers".freeze

    class << self      
      def starting_five
        {
          pg: POINT_GUARD,
          sg: SHOOTING_GUARD,
          sf: SMALL_FORWARD,
          pf: POWER_FORWARD,
          c: CENTER,
        }
      end

      def coach
        COACH.upcase
      end
    end
  end
end