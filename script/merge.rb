desc 'Merge all of the texttile output into a single file for pdf conversion'

task :merge do
  File.open('output/full_book.markdown', 'w+') do |f|
    Dir["text/**/*.markdown"].sort.each do |path|
      m = File.new(path)
      m.readlines.each do |line|
        f << line.gsub(/^\357\273\277/,'')
      end
      f << "\n"
    end
  end
end
