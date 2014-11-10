require 'auto_html'
Dir["#{File.dirname(__FILE__) + '/unlock_auto_html/filters'}/**/*"].each do |filter|
  require "#{filter}"
end

module UnlockAutoHtml
end

# if defined?(ActiveRecord::Base)
  require 'unlock_auto_html/active_record'
  class ActiveRecord::Base
    include UnlockAutoHtml::ActiveRecord
  end
  # ActiveRecord::Base.send :include, UnlockAutoHtml::ActiveRecord
# end
