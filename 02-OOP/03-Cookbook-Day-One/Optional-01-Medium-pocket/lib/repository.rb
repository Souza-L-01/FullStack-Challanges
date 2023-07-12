require "csv"
require_relative "post"

class Repository
    def initialize(csv_file)
        post
        @csv_file = csv_file
        load_csv
    end

    def all
        @posts
    end

    def add(post)
        @posts << post
    end

    def find(index)
        @posts[index]
    end

    def mark_as_read(index)
        @posts[index].mark_as_read!
    end

    private

end
