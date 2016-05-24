class Tender < ActiveRecord::Base
if Rails.env.devlopmet?
has_attached_file :document

else	
has_attached_file :document,
				:storage => :dropbox,
    			:dropbox_credentials => Rails.root.join("config/dropbox.yml")

validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

   end				      
end

