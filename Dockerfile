# This dockerfile used for FourCseq.
# VERSION 1 - EDITION 1
# Powered by ChangeGene LLC.
# A Bioinformatics Solution Provider from Harvard.
# Created by Skywalker@changegene.com at 20170731.
# Offical web: https://github.com/changegene/fourSig_method_dev_docker
# The follow is modify log:

# ubuntu version choice the version earlier than your Software or Pipeline.  X.04 is the LTS version.
# ubuntu version list: https://wiki.ubuntu.com/Releases
ARG  Image_VERSION=12.04
FROM bioconductor/devel_base2


MAINTAINER Skywalker <skywalker@changegene.com>

ENV DIRPATH /Project
WORKDIR $DIRPATH

#-------------Install R bioconductor packages------------
RUN echo 'source("http://bioconductor.org/biocLite.R"); biocLite(FourCSeq, ask=FALSE)' > /tmp/packages_bioc.R
RUN Rscript /tmp/packages_bioc.R
