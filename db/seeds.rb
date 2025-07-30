# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Advisor.destroy_all
Post.destroy_all


advisors = Advisor.create!([
  { name: 'Alice Johnson', title: 'Senior Advisor' },
  { name: 'Bob Smith', title: 'Financial Consultant' },
  { name: 'Carol Lee', title: 'Strategy Advisor' }
])

Post.create!([
  {title: 'Post 1', content: 'Content of first post.', advisor_id: advisors[0].id},
  {title: 'Post 2', content: 'Content of second post.', advisor_id: advisors[1].id},
  {title: 'Post 3', content: 'Content of third post.', advisor_id: advisors[2].id},
])