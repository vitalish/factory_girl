class Factory
  class Proxy #:nodoc:
    class Create < Build #:nodoc:
      def result
        run_callbacks(:after_build)
        temp_attributes = @instance.attributes
        @instance.save!
        run_callbacks(:after_create,temp_attributes)
        @instance
      end
    end
  end
end
