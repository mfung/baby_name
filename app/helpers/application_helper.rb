module ApplicationHelper
  def active_link(path, klass = '')
    return klass << ' active' if request.path == path

    klass
  end
end
