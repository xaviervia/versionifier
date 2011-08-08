module Versionifier
  VERSION = "0.1.0"

  class Version
    attr_accessor :major, :regular, :minor
    def initialize(the_version)
      splitted    = the_version.split "."
      @major      = splitted[0].to_i
      @regular    = splitted[1].to_i
      @minor      = splitted[2].to_i
    end
    
    def increment(which, quant, options = nil)
      new_version = self.clone
      new_version.send "#{which}=".to_sym, self.send(which) + quant
      if options == :reset
        case which
          when :major
            new_version.regular = 0; new_version.minor = 0
          when :regular
            new_version.minor = 0
        end
      end
      new_version
    end
    
    def to_s; "#{@major}.#{@regular}.#{@minor}"; end
    def eql?(other)
      if other.is_a? String
        return other == self.to_s
      else
        return super other
      end
    end
    
    def ==(other)
      return self.eql? other
    end
  end
end
