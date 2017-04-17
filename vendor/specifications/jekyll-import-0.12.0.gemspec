# -*- encoding: utf-8 -*-
# stub: jekyll-import 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-import".freeze
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Preston-Werner".freeze]
  s.date = "2016-11-29"
  s.description = "Provides the Import command for Jekyll.".freeze
  s.email = "tom@mojombo.com".freeze
  s.extra_rdoc_files = ["README.markdown".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.markdown".freeze]
  s.homepage = "http://github.com/jekyll/jekyll-import".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Import command for Jekyll (static site generator).".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, [">= 1.4"])
      s.add_runtime_dependency(%q<fastercsv>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.1.0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.0.0"])
      s.add_development_dependency(%q<activesupport>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<redgreen>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<shoulda>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<rr>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<simplecov-gem-adapter>.freeze, ["~> 1.0.1"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<sequel>.freeze, ["~> 3.42"])
      s.add_development_dependency(%q<htmlentities>.freeze, ["~> 4.3"])
      s.add_development_dependency(%q<hpricot>.freeze, ["~> 0.8"])
      s.add_development_dependency(%q<mysql>.freeze, ["~> 2.8"])
      s.add_development_dependency(%q<pg>.freeze, ["~> 0.12"])
      s.add_development_dependency(%q<mysql2>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<behance>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<unidecode>.freeze, [">= 0"])
      s.add_development_dependency(%q<open_uri_redirections>.freeze, [">= 0"])
      s.add_development_dependency(%q<reverse_markdown>.freeze, [">= 0"])
      s.add_development_dependency(%q<launchy>.freeze, ["~> 2.4"])
    else
      s.add_dependency(%q<jekyll>.freeze, [">= 1.4"])
      s.add_dependency(%q<fastercsv>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.1.0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.0.0"])
      s.add_dependency(%q<activesupport>.freeze, ["~> 3.2"])
      s.add_dependency(%q<redgreen>.freeze, ["~> 1.2"])
      s.add_dependency(%q<shoulda>.freeze, ["~> 3.5"])
      s.add_dependency(%q<rr>.freeze, ["~> 1.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
      s.add_dependency(%q<simplecov-gem-adapter>.freeze, ["~> 1.0.1"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<sequel>.freeze, ["~> 3.42"])
      s.add_dependency(%q<htmlentities>.freeze, ["~> 4.3"])
      s.add_dependency(%q<hpricot>.freeze, ["~> 0.8"])
      s.add_dependency(%q<mysql>.freeze, ["~> 2.8"])
      s.add_dependency(%q<pg>.freeze, ["~> 0.12"])
      s.add_dependency(%q<mysql2>.freeze, ["~> 0.3"])
      s.add_dependency(%q<behance>.freeze, ["~> 0.3"])
      s.add_dependency(%q<unidecode>.freeze, [">= 0"])
      s.add_dependency(%q<open_uri_redirections>.freeze, [">= 0"])
      s.add_dependency(%q<reverse_markdown>.freeze, [">= 0"])
      s.add_dependency(%q<launchy>.freeze, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 1.4"])
    s.add_dependency(%q<fastercsv>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.1.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.0.0"])
    s.add_dependency(%q<activesupport>.freeze, ["~> 3.2"])
    s.add_dependency(%q<redgreen>.freeze, ["~> 1.2"])
    s.add_dependency(%q<shoulda>.freeze, ["~> 3.5"])
    s.add_dependency(%q<rr>.freeze, ["~> 1.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
    s.add_dependency(%q<simplecov-gem-adapter>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<sequel>.freeze, ["~> 3.42"])
    s.add_dependency(%q<htmlentities>.freeze, ["~> 4.3"])
    s.add_dependency(%q<hpricot>.freeze, ["~> 0.8"])
    s.add_dependency(%q<mysql>.freeze, ["~> 2.8"])
    s.add_dependency(%q<pg>.freeze, ["~> 0.12"])
    s.add_dependency(%q<mysql2>.freeze, ["~> 0.3"])
    s.add_dependency(%q<behance>.freeze, ["~> 0.3"])
    s.add_dependency(%q<unidecode>.freeze, [">= 0"])
    s.add_dependency(%q<open_uri_redirections>.freeze, [">= 0"])
    s.add_dependency(%q<reverse_markdown>.freeze, [">= 0"])
    s.add_dependency(%q<launchy>.freeze, ["~> 2.4"])
  end
end
