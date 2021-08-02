# Useful recipes:
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/recipes.html#using-pip-install-or-conda-install-in-a-child-docker-image

FROM jupyter/minimal-notebook

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
        net-tools && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN conda install --yes --file /tmp/requirements.txt && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"