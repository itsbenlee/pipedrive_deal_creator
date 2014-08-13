require "pipedrive_deal_creator/version"
require 'pipedrive-ruby'

module PipedriveDealCreator
	class PipedriveDealCreator 
		def initialize(api_token) 
			Pipedrive.authenticate(api_token)	
		end

		def create_deal(person_attributes, deal_title, deal_content, stage_id=nil, owner_id=nil)
			person = Pipedrive::Person.create(person_attributes)
			deal_attributes = {
        		person_id: person.id,
        		title:     deal_title
      		}
      		deal_attributes[:stage_id] = stage_id if stage_id
            deal_attributes[:user_id] = owner_id if owner_id
      	
			deal = Pipedrive::Deal.create(deal_attributes)
      		note = Pipedrive::Note.create({
        		deal_id: deal.id,
        		content: deal_content
      		})
		end
	end
end
