import os
import shutil
import subprocess
import time

# Define the paths
tomcat_webapp_dir = 'C:/Program Files/Apache Software Foundation/Tomcat 11.0/webapps'  # Update this path to your Tomcat webapps directory
project_dir = 'F:/GIT-Push/IdeaProjects-JAVA/Projects/Jakarta-Submit'  # Update this to your project directory
war_filename = 'Jakarta-Submit-1.0-SNAPSHOT.war'  # Update this to your WAR file name

# Function to clean the Tomcat webapps directory
def clean_tomcat_webapp():
    print("Cleaning Tomcat webapps directory...")
    war_file_path = os.path.join(tomcat_webapp_dir, war_filename)
    if os.path.exists(war_file_path):
        print(f"Deleting existing WAR file: {war_file_path}")
        os.remove(war_file_path)
    else:
        print(f"No existing WAR file found at: {war_file_path}")

# Function to clean the project directory (optional)
def clean_project():
    print("Cleaning project directory (target/ folder)...")
    target_dir = os.path.join(project_dir, 'target')
    if os.path.exists(target_dir):
        shutil.rmtree(target_dir)
        print(f"Deleted target directory: {target_dir}")
    else:
        print("No target directory found to clean.")

# Function to package the project (Maven)
def package_project():
    print("Packaging project with Maven...")
    try:
        subprocess.run(['cmd', '/c', 'mvn', 'package'], cwd=project_dir, check=True)
        print("Project packaged successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error during packaging: {e}")
        exit(1)

# Function to deploy the WAR file to Tomcat
def deploy_to_tomcat():
    print("Deploying to Tomcat...")
    target_war_file = os.path.join(project_dir, 'target', war_filename)
    tomcat_war_file = os.path.join(tomcat_webapp_dir, war_filename)

    if os.path.exists(target_war_file):
        print(f"Deploying WAR file: {target_war_file} to {tomcat_war_file}")
        shutil.copy(target_war_file, tomcat_webapp_dir)
        print("Deployment successful.")
    else:
        print(f"Error: WAR file {target_war_file} not found.")
        exit(1)

# Main function to orchestrate the process
def main():
    clean_tomcat_webapp()
    clean_project()
    package_project()
    deploy_to_tomcat()
    print("Deployment process completed.")

if __name__ == '__main__':
    main()
