namespace :post do
  desc "post rake tasks including adding role"
  task :role => :environment do |t, args|
    Post.all.each do |post|
      post.update_attributes(:role => "author")
    end
    powers = Post.find_by_title("powers")
    powers.update_attributes(:role => "admin")
  end
end