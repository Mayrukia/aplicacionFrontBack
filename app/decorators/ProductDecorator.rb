class PostDecorator < ApplicationDecorator
  delegate_all

  def image_attached
    object.image if object.image.attached?
  end

end
