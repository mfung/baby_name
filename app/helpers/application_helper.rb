module ApplicationHelper
  include Pagy::Frontend

  def pretty_gender(gender = nil)
    return nil unless gender

    if gender == 'M'
      return 'Male'
    elsif gender == 'F'
      return 'Female'
    else
      return 'Unknown'
    end
  end

  def active_link(path, klass = '')
    return klass << ' active' if request.path == path

    klass
  end
end
