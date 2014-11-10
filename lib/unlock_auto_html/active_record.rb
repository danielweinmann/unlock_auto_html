module UnlockAutoHtml
  module ActiveRecord

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def unlock_auto_html_for *attributes
        attributes.each do |attribute|
          self.auto_html_for attribute do
            html_escape map: {
              '&' => '&amp;',
              '>' => '&gt;',
              '<' => '&lt;',
              '"' => '"'
            }
            image
            youtube width: '100%', height: 403, wmode: "opaque"
            vimeo width: '100%', height: 403
            soundcloud width: '100%', height: 403
            redcloth target: :_blank
            link target: :_blank
          end
        end
      end
    end

  end
end