class Nozomi::CLI < Clamp::Command
  self.description = <<-DESC
A wrapper for the `rails new` command, with an extended template interface. The
standard set of templates applied are:
  - initialised git repository
  - haml
  - sass
  - formtastic
  - decent_exposure
  - rspec
  - rspec-rails
  - capybara
  - jquery
  - README.markdown
  - config/database.example.yml
  DESC
  
  option ['-i', '--interactive'], :flag, 'Pick and choose the templates'
  option ['--debug'], :flag, 'Print out debugging statements'
  option ['-d', '--database'], 'DATABASE', 'Preconfigure for selected database',
    :default => 'sqlite3'
  
  parameter 'APP_NAME', 'The name of the Rails application you want to generate'
  
  def execute
    puts '', `cat #{template.path}`, '', command if debug?
    
    system command
  end
  
  private
  
  def template
    @template ||= begin
      if interactive?
        Nozomi::Interactive.new.template
      else
        Nozomi::Template.new('standard')
      end
    end
  end
  
  def interactive_file
    @interactive_file ||= Tempfile.new('nozomi')
  end
  
  def command
    "rails new #{app_name} -m #{template.path} --database=#{database} --skip-test-unit --skip-prototype"
  end
end
