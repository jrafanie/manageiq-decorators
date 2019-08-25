class MiqAeDomainDecorator < MiqDecorator
  def self.fonticon
    'fa fa-globe'
  end

  def fonticon
    @object.name == MiqAeDatastore::MANAGEIQ_DOMAIN ? 'ff ff-manageiq' : super
  end

  def fileicon
    if git_enabled?
      'svg/ae_git_domain.svg'
    elsif object.top_level_namespace
      "svg/vendor-#{@object.top_level_namespace.downcase}.svg"
    end
  end
end
