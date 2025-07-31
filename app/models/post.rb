class Post < ApplicationRecord
  belongs_to :advisor

  def post_hash
    {
      id: id,
      title: title,
      content: content,
      advisor: {
        id: advisor.id,
        name: advisor.name,
        title: advisor.title
      }
    }
  end
end