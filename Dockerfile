FROM  rocker/tidyverse

EXPOSE 8787

RUN R -e "install.packages('tidymodels', repos = 'http://cran.us.r-project.org')" 
RUN R -e "install.packages('fastrep', repos = 'http://cran.us.r-project.org')"  
RUN R -e "install.packages('markdown', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('bookdown', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('tinytex', repos = 'http://cran.us.r-project.org')"  

RUN R -e "tinytex::install_tinytex()"

VOLUME /var/data