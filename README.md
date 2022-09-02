# First Depolyment

The purpose of this deployment was to: 

1. Setup and configure Jenkins on a EC2. 

2. Add a item in Jenkins to build and test a GitHub repository containing a Flask app(url-shortener). 

3. Deploy the Flask App(url-shortener) on AWS Elastic Beanstalk. 

4. Document my observations and what I could improve during the deployment. 

5. Diagram the pipeline. 

Due Before 09/01/2022 11:59:59 PM

## Files

`Documentation.pdf` is the file that contains the documentation. 

`Pipeline.drawio.png` is the pipeline diagram(also in the documentation). 

`installjenkins.sh` is a script I wrote to install Jenkins(is a dependency). 

`runinstalljenkins.sh` is a script I wrote to run the installjenkins.sh script. 

`ziprepo.sh` is a script I wrote to git clone and zip the Flask App(url-shortener). 

`installjenkins.log` is the log created when I ran the runinstalljenkins.sh script.

`Images` is the folder containing the original images used in the documentation.