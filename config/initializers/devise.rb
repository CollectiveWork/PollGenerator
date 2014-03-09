=begin
config.warden do |manager|
    manager.default_strategies(:scope => :user).unshift :browserid
    # manager.browserid_url = "dev.diresworb.org"  # Development (default)
    # manager.browserid_url = "diresworb.org"      # Beta
    # manager.browserid_url = "browserid.org"      # Production
end
=end