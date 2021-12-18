FROM python:3.7.3-stretch
# FROM python:3-alpine
# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore-DL3013

# RUN pip install --upgrade pip
RUN python -m pip install --upgrade pip
RUN pip config set global.trusted-host "pypi.org files.pythonhosted.org pypi.python.org" --trusted-host=pypi.python.org --trusted-host=pypi.org --trusted-host=files.pythonhosted.org
RUN pip install -r requirements.txt