class LifeStyle < ActiveRecord::Base

  has_many :goods
  accepts_nested_attributes_for :goods

  has_attached_file :photo,
                    :storage => :s3,
                    :path => '/:class/:id/:filename',
                    :s3_credentials => 'config/s3_credentials.yml'
                    # styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :photo

end
