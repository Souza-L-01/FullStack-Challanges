require_relative "../views/posts_view"

class PostsController 
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    posts = Post.all

    # TODO: give them to the view to be printed
    @view.print_posts(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    title = @view.ask_for("Title")
    url = @view.ask_for("Url")
    new_post = Post.create(title: title, url: url)
    @view.print_successfully_created(new_post)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    id = @view.ask_for("id")
    post = Post.find_by(id: id)
    title = @view.ask_for("Title", post.title)
    url = @view.ask_for("URL", post.url)

    # Update the post's attributes
    post.update(title: title, url: url)

    # Notify the user that the post was successfully updated
    @view.print_successfully_updated(post)
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    id = @view.ask_for("id")
    post = Post.find_by(id: id)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    id = @view.ask_for("id")
  end

  private

  def find_post
    id = @view.ask_for("id").to_i
    post = Post.find_by(id: id)

    unless post
      @view.print_post_not_found(id)
      return
    end

    post
  end
end
