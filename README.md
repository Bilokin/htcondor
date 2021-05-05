# Belle II HTCondor Snakemake profile

This profile configures Snakemake to submit Belle II jobs to a HTCondor cluster.
Forked from [Snakemake-Profiles/htcondor](https://github.com/Snakemake-Profiles/htcondor)


### Prerequisites
The profile makes use of the HTCondor python bindings which can be installed with 

    pip install --user htcondor
    
or using Anaconda with

    conda install -c conda-forge python-htcondor

### Deploy profile

To deploy this profile run

    mkdir -p ~/.config/snakemake
    cd ~/.config/snakemake
    cookiecutter https://github.com/bilokin/htcondor.git

The cookiecutter will ask the following:

 * Profile name, one can leave the suggested `htcondor`
 * Path to saved logs, for DESY NAF one can copy-paste the suggested path and change `user_name` to your user name.

The logs will be used to update the status of submitted jobs (as recommended in the [documentation of the HTCondor Python bindings](https://htcondor.readthedocs.io/en/latest/apis/python-bindings/advanced/Scalable-Job-Tracking.html)).

Then, you can run Snakemake with

    snakemake --profile htcondor ...

so that jobs are submitted to the cluster. If Snakemake is killed and restarted afterwards, it will automatically resume still running jobs.
