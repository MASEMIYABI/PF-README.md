# encoding: utf-8
I18n.default_locale = 'ja'
LOCALES_DIRECTORY = "#{Rails.root}/config/locales/"
LOCALES_AVAILABLE = Dir["#{LOCALES_DIRECTORY}/*.{rb,yml}"].map do |locale_file|
  File.basename(File.basename(locale_file, '.rb'), '.yml')
end.uniq.sort