module UsersHelper
  def selectRandomUser
    randomUser = nil
    loop do 
      randomUser = User.all.sample
      break if (randomUser != current_user)
    end
    randomUser
  end
end
