class Task
    attr_reader :content, :id, :completed_status, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed_status = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete?
    	@completed_status
    end

    def complete!
    	@completed_status = true
    end

    def make_incomplete!
    	@complete_status = false
    end

    def update_content!(content)
    	@content = content
    	@updated_at = Time.now
    end

end