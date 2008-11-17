class Sake
  module Help #:nodoc:
    extend self

    def display
      die <<-end_help
Usage: sake [options]

    Any <file> can be either a local file or a remote URL (such as a web page).

    -T                 Show installed Sake tasks.
    -T pattern         Show installed Sake tasks matching <pattern>.
    -T file            Show tasks in <file>.
    -T file pattern    Show tasks in <file>.
    -Tv                Show all installed Sake tasks.
    -Tv pattern        Show all installed Sake tasks matching <pattern>.
    -Tv file           Show all tasks in <file>.
    -Tv file pattern   Show all tasks in <file>.

    -i file            Install all tasks from <file>.
    -i file tasks      Install tasks from <file>.  Can be one or more tasks.

    -u tasks           Uninstall one or more tasks.

    -e task            Show the source for task.
    -e file            Show the source for all tasks from <file>.
    -e file tasks      Show the source for <task> as defined in <file>.  
    -P [file/tasks]    Send the source for tasks to Pastie (see -e for options).

    -S                 Start a Mongrel handler and serve your installed Sake tasks
                       over port 4567.
    -p                 Set the port to serve Sake tasks on.  Defaults to 4567. Only
                       works with -S.
    -d                 Start and daemonize a Sake server.  Only works with -S.
      end_help
    end
  end
end
