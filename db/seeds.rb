# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# # Examples:

# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# Location.create(province: 'Ho Chi Minh')
# Location.create(province: 'Ha Noi')
# Location.create(province: 'Quang Binh')
# Location.create(province: 'Da Nang')
# Location.create(province: 'Vung Tau')
# Location.create(province: 'Lam Dong')

# Hashtag.create(tag_name: 'Comment')
# Hashtag.create(tag_name: 'View')
# Hashtag.create(tag_name: 'Rating')
# Hashtag.create(tag_name: 'Ramen')
# Hashtag.create(tag_name: 'Photogenic')

# Category.create(category_name: 'Travel')
# Category.create(category_name: 'Work')
# Category.create(category_name: 'Study')
# Category.create(category_name: 'Shopping')  
# Category.create(category_name: 'Food')

# Blog.create(location_id: 19)
# Blog.create(location_id: 20)
# Blog.create(location_id: 21)
# Blog.create(location_id: 22)
# Blog.create(location_id: 23)
# Blog.create(location_id: 24)
# Blog.create(location_id: 22)

# BlogHashtag.create(blog_id: 7, hashtag_id: 11)
# BlogHashtag.create(blog_id: 8, hashtag_id: 12)
# BlogHashtag.create(blog_id: 9, hashtag_id: 13)
# BlogHashtag.create(blog_id: 7, hashtag_id: 13)
# BlogHashtag.create(blog_id: 10, hashtag_id: 14)
# BlogHashtag.create(blog_id: 11, hashtag_id: 15)
# BlogHashtag.create(blog_id: 12, hashtag_id: 11)
# BlogHashtag.create(blog_id: 10, hashtag_id: 12)
# BlogHashtag.create(blog_id: 8, hashtag_id: 14)

# CategoryBlog.create(blog_id: 7, category_id: 17)
# CategoryBlog.create(blog_id: 8, category_id: 20)
# CategoryBlog.create(blog_id: 9, category_id: 18)
# CategoryBlog.create(blog_id: 10, category_id: 21)
# CategoryBlog.create(blog_id: 11, category_id: 20)
# CategoryBlog.create(blog_id: 12, category_id: 19)
# CategoryBlog.create(blog_id: 13, category_id: 18)
# CategoryBlog.create(blog_id: 10, category_id: 17)
# CategoryBlog.create(blog_id: 8, category_id: 21)
# CategoryBlog.create(blog_id: 13, category_id: 19)

BlogDetail.create(blog_id: 7, title: 'Blog7', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')
BlogDetail.create(blog_id: 8, title: 'Blog8', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')
BlogDetail.create(blog_id: 9, title: 'Blog9', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')
BlogDetail.create(blog_id: 10, title: 'Blog10', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')
BlogDetail.create(blog_id: 11, title: 'Blog11', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')
BlogDetail.create(blog_id: 12, title: 'Blog12', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')
BlogDetail.create(blog_id: 13, title: 'Blog13', content: 'There are plenty of regular souvenirs but why not taking time to choose something a bit more special? We selected 10 items that you can easily find in the city center. We excluded items that you can immediately find on the internet; at the Airport or at the station. Of course there are plenty of other souvenirs but just take our selection as an example. ')

# Role.create(name: 'admin')
# Role.create(name: 'host')

# AdminUser.create(email: 'admin@example.com', password: '123456')