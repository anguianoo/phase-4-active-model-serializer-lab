class AuthorPostSerializer < ActiveModel::Serializer
#  the title
# the first 40 characters of the post's content as short_content,
# with a trailing ellipsis (...) at the end
# a list of the associated tags
  attributes :title, :short_content
  has_many :tags

  def short_content
    "#{object.content[0..39]}..."
  end
end
