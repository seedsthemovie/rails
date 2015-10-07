class Publish

	def urls
		list = []

		# css
		list << "assets/application.css"
		list << "/assets/foundation-icons.eot"
		list << "/assets/foundation-icons.woff"
		list << "/assets/foundation-icons.ttf"
		list << "/assets/foundation-icons.svg"

		# js
		list << "assets/application.js"
		list << "/assets/vendor/modernizr.js"

		# pages
		list << ""
		list << "/teaser"


		# images
		4.times do |i|
			list << "/assets/concepts/shelter/shelter.large.b.0#{i+1}.jpg"
		end
		list << "/assets/icons/festival_award.png"

		# video
		list << "/assets/concept.mp4"




		list
	end

	def dest_folder
		"/home/frading/work/web/films/seeds/github_page/seedsthemovie.github.io"
	end

	def host
		"http://localhost:5000"
	end

	def fetch_url(url)
		file_name = url.blank? ? "index" : url
		file_name = "#{file_name}.html" if file_name.split('.').count == 1
		file_dest = "#{dest_folder}/#{file_name}"

		folder = File.dirname(file_dest)
		cmd = "mkdir -p #{folder}"
		puts cmd
		`#{cmd}`

		cmd = "curl #{host}/#{url} > #{file_dest}"
		puts cmd
		`#{cmd}`
	end

	def start
		urls.each do |url|
			fetch_url(url)
		end
	end

end
