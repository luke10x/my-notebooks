# My data notebooks

## Start in Docker

- run `task up` to start a notebook.
- run `docker-compose logs -f` to see what is the URL to access the notebook. (you may need to remap the logged URL so that it is accessible form outside the container).
- run `task` to shell into Jupyter container.

To install a new package in the Jupyter container run:

    conda install pandas

See whats installed:
      
    conda list pandas 

and don't forget to add to add it to [requirements.txt](./requirements.txt)!

# Start in Micromamba

This allows open notebooks with VSCode, 
but it requires [Mamba](https://github.com/mamba-org/mamba).

activate Micromamba before starting VSCode:

    micromamba activate
    code .

To run a notebook use kernel from Micromamba path.

Make sure you install dependencies to Micromamba with

     micromamba install --file requirements.txt -c conda-forge

To install new package, for example "pandas", use:

    micromamba install pandas -c conda-forge

See whats installed:
      
    micromamba list pandas 

and don't forget to add to add it to [requirements.txt](./requirements.txt)!
