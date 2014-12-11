require 'bundler/setup'
require 'padrino-core/cli/rake'

PadrinoTasks.use(:database)
PadrinoTasks.use(:sequel)
PadrinoTasks.init
require File.dirname(__FILE__) + '/config/boot.rb'
require 'thor'
require 'padrino-core/cli/rake'

PadrinoTasks.init

# ----- Concat & minify assets

require 'uglifier'
require 'listen'
 
SRC_PATH    = "#{ Dir.pwd }/public/javascripts"
OUTPUT_PATH = "#{ SRC_PATH }/output"
BUILD_PATH  = "#{ SRC_PATH }/mini"

desc 'Compiles and concatenates source coffeescript files'
task :concat_coffee do
  files = Dir["#{ SRC_PATH }/*.coffee"]
  files.map { |file| `coffee -b --output #{ OUTPUT_PATH } --compile #{ file }` }

  if $?.to_i == 0
    js = Dir["#{ OUTPUT_PATH }/*.js"]

    File.open("#{ BUILD_PATH }/main_concat.js", "w+") do |concat_file|
      js.each do |file|
        code = File.open(file, 'r').read
        code.each_line { |line| concat_file << line }
        concat_file << "\n\n"
      end

      minjs = Uglifier.new.compile(File.open(concat_file, 'r').read)
      File.open("#{ BUILD_PATH }/main.min.js", 'w') { |f| f.write(minjs) }
    end

    puts "Compiled successfully."

  else
    message = "'An error occured while compiling!' 2>/dev/null"
    print message
    system "growlnotify -m #{ message }"
  end
end