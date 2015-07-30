class ReleaseCommand < Jekyll::Command
    class << self
        def init_with_program(prog)
            prog.command(:release) { |c|
                c.syntax "release"
                c.description 'Release current build to production web server.'
                c.action { |args, options|
                    puts("XXX Write me!")
                }
            }
        end
    end
end
