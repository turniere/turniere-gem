module Turniere
  class Tournament
    def initialize(teams, group_size, randomize, playoff_size)
      @teams = teams
      @group_size = group_size
      @randomize = randomize
      @playoff_size = playoff_size
    end

    def self.create(teams, group_size, randomize, playoff_size)
      teams.shuffle! if randomize

      if group_size < 2
          generatePlayoffs(teams, tournament);
      else
          generateGroupStage(teams, tournament, groupSize, playoffSize);
      end
      return
    end
  end
end
