ChefDK

This is an Ubuntu-based container with the ChefDK installed. By using volume mounting, you can expose local files to ChefDK tools and persist configuration in your home directory.

Usage:

`docker run --rm -v $HOME/.chefdk:/root/.chefdk -v $PWD:/data --workdir=/data 10thmagnitude/chefdk`

For userland usage, you may want to alias the above command to `chefdk` and use tools by prefixing `chefdk`, i.e. `chefdk knife`

Todo: Find out if there is a way to expose the host's Vagrant for use with Test-Kitchen.
