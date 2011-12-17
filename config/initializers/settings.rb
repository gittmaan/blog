module Settings
  def self.extended(base)
    base.instance_variable_set "@_settings", Hash.new(File.join(Dir.pwd, "config", "settings.yml"), Rails.env)
  end
end

Rails.extend Settings

