class Project < ActiveRecord::Base
  before_save { demo_url.downcase! if demo_url }
  before_save { repo_url.downcase! if repo_url }
  before_save { check_urls if (demo_url || repo_url) }
  default_scope { order('ordinal ASC') }


  def check_urls
    if self.demo_url && self.demo_url != ''
      unless self.demo_url.start_with?('http://') || self.demo_url.start_with?('https://')
        self.demo_url = "http://#{self.demo_url}"
      end
    elsif self.repo_url && self.repo_url != ''
      unless self.repo_url.start_with?('http://') || self.repo_url.start_with?('https://')
        self.repo_url = "http://#{self.repo_url}"
      end
    end
  end

end
