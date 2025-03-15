# user-creation-script

# User Creation Script

## Description
This Bash script automates the process of creating a new user on a Linux system. It prompts for a username and password, checks if the user already exists, and ensures the password is set securely.

## Features
- Checks if the username already exists.
- Creates a new user with a home directory.
- Prompts for password input securely.
- Ensures password confirmation to avoid typos.
- Sets the password for the new user.

## Prerequisites
- You must have **sudo** privileges to run this script.
- The system should support `useradd` and `chpasswd` commands.

## Usage
1. **Make the script executable:**
   ```bash
   chmod +x create_user.sh
   ```

2. **Run the script:**
   ```bash
   ./create_user.sh
   ```

3. **Follow the prompts:**
   - Enter the username.
   - Enter and confirm the password.

4. **Verify user creation:**
   ```bash
   id <username>
   ```

## Example Output
```bash
Enter the new username: johndoe
Enter the password for johndoe: 
Confirm the password: 
User 'johndoe' has been created successfully with the given password.
```

## Error Handling
- If the user already exists, the script exits with an error.
- If passwords do not match, the script prompts an error and exits.
- If user creation or password setting fails, an error message is displayed.

## License
This script is released under the MIT License.

## Author
Nkosiyethu Mbatha
