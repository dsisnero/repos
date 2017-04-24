def repos(user)
  json = Browser.json("https://api.github.com/users/#{user}/repos?sort=pushed&per_page=8")

  puts "#{user}'s repos"
  json.each do |e|
    puts AttrString.new(e["name"], link:  e["html_url"])
  end
end

repos('ongaeshi')

loop do
  print "user?> "
  name = gets
  repos(name)
end
