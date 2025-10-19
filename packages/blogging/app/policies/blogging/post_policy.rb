class Blogging::PostPolicy < Blogging::ResourcePolicy
  # Core actions

  def create?
    true
  end

  def read?
    true
  end

  # Core attributes

  def permitted_attributes_for_create
    [:user, :title, :content, :published_at]
  end

  def permitted_attributes_for_read
    [:user, :title, :content, :published_at]
  end

  # Associations

  def permitted_associations
    %i[]
  end
end
