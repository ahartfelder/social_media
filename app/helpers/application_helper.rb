# frozen_string_literal: true

# Helper for views
module ApplicationHelper
  def active?(current)
    request.path == current ? ' active' : nil
  end

  def form_errors(object)
    render 'shared/form_errors', object:
  end
end
