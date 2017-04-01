class API < Grape::API
  format :json
  prefix 'api'
  version 'v1', using: :path

  # resource :reviews do
  # desc "List all review"
  #  get do
  #    Review.all
  #  end
  # end


  resource :upload do
  	post do
  		avatar = params[:avatar]


  		attachment = {
  			:filename => avatar[:filename],
  			:type => avatar[:type],
  			:headers => avatar[:head],
  			:tempfile => avatar[:tempfile]
  		}

  		user = User.new


  		user.avatar = ActionDispatch::Http::UploadedFile.new(attachment)

  		user.avatar_path = attachment[:filename]

  		user.name = "dummy name"

  		user.save
  	end

end

end