require 'inline'

class MyTest

  inline(:C) do |builder|
    builder.include '</Users/adam/Documents/Automata/Ruby and C++/CGIKcore.cpp>'
    builder.add_compile_flags '-x c++', '-lstdc++'

    builder.c "
      int hello() {
        return MathTypes::Constants::pi;
      }
    "

  end

end

puts MyTest.new.hello