# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# # Examples:

# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

Location.create(province: 'Ho Chi Minh')
Location.create(province: 'Ha Noi')
Location.create(province: 'Quang Binh')
Location.create(province: 'Da Nang')
Location.create(province: 'Vung Tau')
Location.create(province: 'Lam Dong')

Hashtag.create(tag_name: 'Comment')
Hashtag.create(tag_name: 'View')
Hashtag.create(tag_name: 'Rating')
Hashtag.create(tag_name: 'Ramen')
Hashtag.create(tag_name: 'Photogenic')

Category.create(category_name: 'Travel')
Category.create(category_name: 'Work')
Category.create(category_name: 'Study')
Category.create(category_name: 'Shopping')  
Category.create(category_name: 'Food')

Blog.create(location_id: 1)
Blog.create(location_id: 2)
Blog.create(location_id: 3)
Blog.create(location_id: 4)
Blog.create(location_id: 5)
Blog.create(location_id: 6)
Blog.create(location_id: 2)

BlogHashtag.create(blog_id: 1, hashtag_id: 1)
BlogHashtag.create(blog_id: 1, hashtag_id: 2)
BlogHashtag.create(blog_id: 2, hashtag_id: 1)
BlogHashtag.create(blog_id: 2, hashtag_id: 3)
BlogHashtag.create(blog_id: 2, hashtag_id: 4)
BlogHashtag.create(blog_id: 3, hashtag_id: 1)
BlogHashtag.create(blog_id: 4, hashtag_id: 1)
BlogHashtag.create(blog_id: 4, hashtag_id: 2)
BlogHashtag.create(blog_id: 4, hashtag_id: 3)

CategoryBlog.create(blog_id: 1, category_id: 1)
CategoryBlog.create(blog_id: 1, category_id: 2)
CategoryBlog.create(blog_id: 1, category_id: 3)
CategoryBlog.create(blog_id: 2, category_id: 1)
CategoryBlog.create(blog_id: 3, category_id: 2)
CategoryBlog.create(blog_id: 3, category_id: 4)
CategoryBlog.create(blog_id: 4, category_id: 1)
CategoryBlog.create(blog_id: 4, category_id: 2)
CategoryBlog.create(blog_id: 4, category_id: 3)
CategoryBlog.create(blog_id: 5, category_id: 1)

BlogDetail.create(blog_id: 1, title: 'Blog1', content: '123')
BlogDetail.create(blog_id: 2, title: 'Blog2', content: '123')
BlogDetail.create(blog_id: 3, title: 'Blog3', content: '123')
BlogDetail.create(blog_id: 4, title: 'Blog4', content: '123')
BlogDetail.create(blog_id: 5, title: 'Blog5', content: '123')
BlogDetail.create(blog_id: 6, title: 'Blog6', content: '123')
BlogDetail.create(blog_id: 7, title: 'Blog7', content: '123')

Role.create(name: 'admin')
Role.create(name: 'host')
Role.create(name: 'user')

# AdminUser.create(email: 'admin@example.com', password: '123456')