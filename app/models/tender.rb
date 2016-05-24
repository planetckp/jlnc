class Tender < ActiveRecord::Base

has_attached_file :document, content_type: ["application/pdf", "application/x-pdf"]
  validates_attachment_content_type :document, content_type: ["application/pdf", "application/x-pdf", "application/rtf", 'application/x-rtf', 'text/rtf', 'text/plain'],

    				  :storage => :dropbox,
    				  :dropbox_credentials => Rails.root.join("config/dropbox.yml")
   				      
end

