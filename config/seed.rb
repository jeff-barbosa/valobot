# frozen_string_literal: true

require_relative '../lib/app_require'

class SeedLoader
  def load_seed
    # Setting up the agents
    Model::Agent.create!([
      { name: 'brimstone', name_human_format: 'Brimstone', agent_number: 1, category: :controller },
      { name: 'viper', name_human_format: 'Viper', agent_number: 2, category: :controller },
      { name: 'omen', name_human_format: 'Omen', agent_number: 3, category: :controller },
      { name: 'killjoy', name_human_format: 'Killjoy', agent_number: 4, category: :sentinel },
      { name: 'cypher', name_human_format: 'Cypher', agent_number: 5, category: :sentinel },
      { name: 'sova', name_human_format: 'Sova', agent_number: 6, category: :initiator },
      { name: 'sage', name_human_format: 'Sage', agent_number: 7, category: :sentinel },
      { name: 'phoenix', name_human_format: 'Phoenix', agent_number: 9, category: :duelist },
      { name: 'jett', name_human_format: 'Jett', agent_number: 10, category: :duelist },
      { name: 'reyna', name_human_format: 'Reyna', agent_number: 11, category: :duelist },
      { name: 'raze', name_human_format: 'Raze', agent_number: 12, category: :duelist },
      { name: 'breach', name_human_format: 'Breach', agent_number: 13, category: :initiator },
      { name: 'skye', name_human_format: 'Skye', agent_number: 14, category: :initiator },
      { name: 'yoru', name_human_format: 'Yoru', agent_number: 15, category: :duelist },
      { name: 'astra', name_human_format: 'Astra', agent_number: 16, category: :controller },
      { name: 'kayo', name_human_format: 'KAY/O', agent_number: 17, category: :initiator },
      { name: 'chamber', name_human_format: 'Chamber', agent_number: 18, category: :sentinel },
      { name: 'neon', name_human_format: 'Neon', agent_number: 19, category: :duelist },
      { name: 'fade', name_human_format: 'Fade', agent_number: 20, category: :initiator },
      { name: 'harbor', name_human_format: 'Harbor', agent_number: 21, category: :controller }])
  end
end
