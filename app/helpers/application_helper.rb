module ApplicationHelper
  def concat_name(model)
    model.first_name + ' ' + model.last_name
  end
end
