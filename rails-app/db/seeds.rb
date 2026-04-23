user = User.find_or_create_by!(email: "demo@example.com") do |u|
  u.password = "password"
  u.password_confirmation = "password"
end

if user.posts.empty?
  user.posts.create!(
    title: "Welcome to the blog",
    content: "This is the first post. Sign in as demo@example.com / password to create your own."
  )
end
