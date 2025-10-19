class Blogging::CommentPolicy < Blogging::ResourcePolicy
  # Core actions

  def create?
    true
  end

  def read?
    true
  end

  # Core attributes

  def permitted_attributes_for_create
    [:user, :post, :body]
  end

  def permitted_attributes_for_read
    [:user, :post, :body]
  end

  # Associations

  def permitted_associations
    %i[]
  end
end
