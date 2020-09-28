module ApplicationHelper
  include Pagy::Frontend

  def active_link(path, klass = '')
    return klass << ' active' if request.path == path

    klass
  end
end
