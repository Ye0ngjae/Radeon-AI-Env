# Base image
FROM ubuntu:latest

# Install Jupyter Notebook

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python3-pip
RUN pip3 install jupyter

# Install AI libraries
RUN pip3 install tensorflow
RUN pip3 install scikit-learn
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install scipy
RUN pip3 install seaborn
RUN pip3 install opencv-python
RUN pip3 install keras


# Set up Jupyter Notebook
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py

# Expose Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--allow-root"]
