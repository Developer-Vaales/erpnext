# Use an official Frappe base image that has Python, Node, bench, etc.
# Make sure to use a version that matches your app's requirements.
FROM frappe/erpnext-worker:v15.25.0

# Switch to the frappe user
USER frappe

# The base image has a bench directory at /home/frappe/frappe-bench
# We will copy your custom app code into the 'apps' folder.
# The source is '.' (the root of your Git repo) and the destination is the erpnext app folder.
COPY . /home/frappe/frappe-bench/apps/erpnext

# This is a placeholder command to ensure the container starts.
# The actual start command will be managed by Coolify.
CMD ["bench", "start"]
