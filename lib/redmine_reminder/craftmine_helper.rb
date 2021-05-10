module Craftmine
  module Helper
    def self.name
      " (兼容版)"
    end

    def self.description
      " <a style='color: green' href=https://www.redmineplugins.cn>(由 www.redmineplugins.cn 提供下载)</a>".html_safe
    end
  end 

  module ExtendedFields
  end

end

Redmine::Plugin.find(:redmine_reminder).instance_eval do
  @name = @name.html_safe + Craftmine::Helper::name
  @description = @description.html_safe + Craftmine::Helper::description
end
