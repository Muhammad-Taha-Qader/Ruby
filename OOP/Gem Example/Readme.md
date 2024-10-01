# Setup
`gem install colorize`
This installs the colorize gem on your system globally (or within your current Ruby environment). You can use it right away, but it won't be listed in a Gemfile for easy management.

`bundle init`
This creates a Gemfile in the current directory. A Gemfile is where you define all the gems your project depends on.

`bundle add colorize`
This command adds the colorize gem to the Gemfile and runs bundle install automatically to ensure the gem is installed locally (within the project), keeping dependencies organized.


## If you:

- Just want the gem installed (system-wide): use `gem install colorize`.
- Want to manage the gem in a project (recommended for collaborative or long-term projects): use    `bundle init` followed by `bundle add colorize`.



And yes, if you skip `gem install colorize` and just run the last two commands (`bundle init and bundle add colorize`), it will result in the same outcome as `bundle add colorize` automatically runs bundle install. So, in practice, using just `bundle init` and `bundle add colorize` is enough—you don't need to manually run `gem install colorize`.