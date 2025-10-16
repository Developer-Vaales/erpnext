# Use the correct, all-in-one base image for the web server
FROM frappe/erpnext:latest

# Switch to the frappe user
USER frappe

# Copy your custom app code into the 'apps' folder.
# The base image already has a bench directory.
COPY . /home/frappe/frappe-bench/apps/erpnext

# The entrypoint of this base image will handle starting the server.
# We do not need a CMD instruction.
