= Sake. Best served warm.

Sick of copy & pasting your badass custom Rakefiles into every new Rails app 
you start?  Fed up with writing one-off admistrative scripts and leaving them
everything?

No longer.  Sake is a tool which helps you maintain a set of system level
Rake tasks.

Get started:

  $ sudo gem install sake
  $ sake -h

Show all Sake tasks (but no local Rake tasks), optionally only those
matching a pattern:

  $ sake -T
  $ sake -T db

Show tasks in a Rakefile, optionally only those matching a pattern:

  $ sake -T file.rake
  $ sake -T file.rake db

Install tasks from a Rakefile, optionally specifying specific tasks:

  $ sake -i Rakefile
  $ sake -i Rakefile db:remigrate
  $ sake -i Rakefile db:remigrate routes

Examine the source of a Rake task:

  $ sake -e routes

You can also examine the source of a task not yet installed:
p
  $ sake -e Rakefile db:remigrate

Uninstall an installed task (can be passed one or more tasks):

  $ sake -u db:remigrate

Post a task to Pastie:

  $ sake -p routes

Invoke a Sake task:

  $ sake <taskname>

Some Sake tasks may depend on tasks which exist only locally.

For instance, you may have a db:version sake task which depends
on the 'environment' Rake task.  The 'environment' Rake task is one
defined by Rails to load its environment.  This db:version task will
work when your current directory is within a Rails app because
Sake knows how to find Rake tasks.  This task will not work,
however, in any other directory (unless a task named 'environment' 
indeed exists).

Sake can also serve its tasks over a network by launching a Mongrel handler.
Pass the -S switch to start Sake in server mode:

  $ sake -S

You can, of course, specify a port:

  $ sake -S -p 1111

You can also daemonize your server for long term serving fun:

  $ sake -S -d

== Special Thanks

* Ryan Davis
* Eric Hodel
* Josh Susser
* Brian Donovan
* Zack Chandler
* Dr Nic Williams

== Author

* Chris Wanstrath (chris at ozmm.org)

