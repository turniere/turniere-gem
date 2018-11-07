module Turniere

  class GroupStage

    def self.generate_playoffs(teams, tournament)
      stageCount = calculate_required_stage_count(teams.size);
    end

    def self.calculate_required_stage_count(number_of_teams)
      if number_of_teams == 0 || number_of_teams == 1
        0;
      else
        Math.log(previous_power_of_two(number_of_teams)) / Math.log(2);
      end
    end

    def self.previous_power_of_two(number)
      exponent = Math.log2 number
      2 ** exponent.floor
    end

  end

end
