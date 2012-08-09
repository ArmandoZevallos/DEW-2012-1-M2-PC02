class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'xvz1evFS4wEEPTGEFPHBog'
      config.consumer_secret = 'kAcSOqF21Fu85e7zjz7ZN2U4ZRhfV3WpwPAoE3Z7kBw'
      config.oauth_token = '370773112-GmHxMAgYyLbNEtIKZeRNFsMKPR9EyMZeS9weJAEb'
      config.oauth_token_secret = 'LswwdoUaIvS8ltyTt5jkRh4J50vUPVVHtR2YPi5kE'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
   
end
