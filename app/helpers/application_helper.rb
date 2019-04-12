module ApplicationHelper
    def flash_message
        message = ""
        [:success, :info, :warning, :danger].each {|type|
            if flash[type]
                message = "<div class=\"alert alert-#{type}\" role=\"alert\">#{flash[type]}</div>".html_safe()
            end
        }
            message
    end
end
