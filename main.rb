require 'inline'

class MyTest

  inline(:C) do |builder|
    builder.include '</root/C-2Ruby/CGIKcore.cpp>'
    builder.add_compile_flags '-x c++', '-lstdc++'

    builder.c "
      double hello() {
        return MathTypes::Constants::pi;
      }
    "

  end

end

puts MyTest.new.hello