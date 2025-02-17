# Project History App

## 🚀 Overview
Project History App is a Rails application that allows users to leave a comment and change the status of the project. This guide provides step-by-step instructions to set up and run the application locally.

For the questions and answers based on discussion with colleagues, refer Discovery.md file

---

## 📌 Prerequisites
Ensure you have the following installed:
- **Ruby** (Check version: `ruby -v`)
- **Bundler** (Install: `gem install bundler`)
- **PostgreSQL** (Ensure it's running: `psql --version`)
- **Node.js & Yarn** (Required for JS assets: `brew install node yarn`)

---

## 🔥 Getting Started

### **1. Clone the Repository**
Run the following command to clone the project:

```sh
git clone <https://github.com/RamyaPrabha27/projects_history_app.git>
cd projects_history_app
```


### **2. Install Dependencies**

```sh
gem install bundler
bundle install
```

### **3. Set up the database**

```sh
brew install postgresql or sudo apt install postgresql
psql --version
rails db:create
rails db:migrate

brew install node
brew install yarn
```

### **4. Start the server**

```sh
rails server
Then, open http://127.0.0.1:3000
```
