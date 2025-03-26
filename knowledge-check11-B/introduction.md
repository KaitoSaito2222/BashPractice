1. **Update the Firewall:**
    - Use `ufw` to allow TCP traffic on port 4000.
2. **Modify the Hosts File:**
    - Check if the entry for `inclass-quiz.com` exists in the `/etc/hosts` file.
    - If it does not exist, add the following line: `127.0.0.1 inclass-quiz.com`.
    - If the entry already exists, print a message indicating that the entry is already present.
3. **Start a Python Web Server:**
    - Start a simple HTTP server using Python 3 on port 4000. This should run in the background.
4. **Open Firefox:**
    - Open Firefox and navigate to `http://inclass-quiz.com:4000`.

### Expected Output:

- Configures the firewall to allow traffic on port 4000.
- Safely modifies the hosts file without duplicating entries.
- Runs a Python web server accessible at the specified URL.
- Opens a web browser to that URL, allowing them to verify that the server is running.