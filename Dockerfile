# Use the correct, all-in-one base image for the web server
FROM frappe/erpnext:latest

# Switch to the frappe user
USER frappe

# Set the working directory for bench commands
WORKDIR /home/frappe/frappe-bench

# Get the missing 'payments' app dependency
RUN bench get-app payments

# Copy your custom app code into the 'apps' folder
COPY . ./apps/erpnext

# Rebuild assets to include the new app
RUN bench build --force
