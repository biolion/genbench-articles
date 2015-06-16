!#/usr/bash
cd /usr/local
wget http://cran.rstudio.com/src/base/R-3/R-3.2.0.tar.gz
wget http://cran.rstudio.com/src/base/R-3/R-3.1.3.tar.gz
wget http://cran.rstudio.com/src/base/R-3/R-3.0.3.tar.gz
wget http://cran.rstudio.com/src/base/R-2/R-2.15.3.tar.gz
wget http://cran.rstudio.com/src/base/R-2/R-2.14.2.tar.gz
tar xvf R-3.2.0.tar.gz
tar xvf R-3.1.3.tar.gz
tar xvf R-3.0.3.tar.gz
tar xvf R-2.15.3.tar.gz
tar xvf R-2.14.2.tar.gz

mv R-3.2.0 R-3.2
mv R-3.1.3 R-3.1
mv R-3.0.3 R-3.0
mv R-2.15.3 R-2.15
mv R-2.14.2 R-2.14

for DIRNAME in R-3.2 R-3.1 R-3.0 R-2.15 R-2.14
do
  cd $DIRNAME
  .configure
  make && make install
  cd ..
done
