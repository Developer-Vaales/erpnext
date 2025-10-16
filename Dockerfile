# Use an official Frappe base image that has Python, Node, bench, etc.
FROM frappe/erpnext-worker:latest

# Switch to the frappe user
USER frappe

# Copy your custom app code into the 'apps' folder.
COPY . /home/frappe/frappe-bench/apps/erpnext

# Use the full path for the start command
CMD ["/home/frappe/.local/bin/bench", "start"]
