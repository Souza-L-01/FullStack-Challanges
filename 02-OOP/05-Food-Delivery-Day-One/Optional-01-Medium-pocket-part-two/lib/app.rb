require_relative "repositories/author_repository"
require_relative "repositories/post_repository"
require_relative "controllers/posts_controller"
require_relative "controllers/authors_controller"
require_relative "router"

author_repo = AuthorRepository.new(File.join(__dir__, 'data/authors.csv'))
post_repo = PostRepository.new(File.join(__dir__, 'data/posts.csv'), author_repo)
posts_controller = PostsController.new(post_repo, author_repo)
authors_controller = AuthorsController.new(author_repo)
router = Router.new(posts_controller, authors_controller)
router.run
