require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open('/home/thomas/Bureau/THE-HACKING-PROJECT/the_gossip_project_sinatra/db/gossip.csv', 'ab') do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read('/home/thomas/Bureau/THE-HACKING-PROJECT/the_gossip_project_sinatra/db/gossip.csv').each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

  def self.find(id)
    data_base = CSV.read('/home/thomas/Bureau/THE-HACKING-PROJECT/the_gossip_project_sinatra/db/gossip.csv')
    return data_base[id]
  end
end

my_gossip = Gossip.new('Mon super auteur', 'Ma super description')
my_gossip.save
