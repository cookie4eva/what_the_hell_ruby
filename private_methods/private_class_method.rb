class ProgrammingLanguage
  def self.first
    languages.first
  end

  def self.languages
    ['C', 'Java', 'Ruby']
  end

  private_class_method :languages
end

puts ProgrammingLanguage.first # 'C'

begin
  ProgrammingLanguage.languages.count
rescue NoMethodError => msg
  puts msg # private method `languages' called for ProgrammingLanguage:Class
end
