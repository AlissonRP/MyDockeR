FROM  rocker/tidyverse

EXPOSE 8787

RUN R -e "install.packages('tidymodels', repos = 'http://cran.us.r-project.org')" && \
    R -e "install.packages('fastrep', repos = 'http://cran.us.r-project.org')"

