class Employee
    attr_reader
    attr_accessor
    attr_writer
    
    def initialize (attributes = {})
        @id = attributes[:id]
        @username = attributes[:username]
        @password = attributes[:password]
        @role = attributes[:role]
    end

    def manager?
        @role == "manager"
    end

    def delivery_guy?
        @role == "delivery guy"
    end
end