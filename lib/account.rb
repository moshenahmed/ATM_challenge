class Account

    def initialize(person, options={})
      @holder = person
      @balance = options[:balance] || 0
    end
    def holder
    end
end
