# 🚀 Coding Assignment 11 – Docker File

This repository demonstrates how to set up a React development environment inside a Docker container.  
The web app runs on **http://127.0.0.1:7775** and displays an `<h1>` with the text **Codin 1**.

---

## 📖 Overview
- **Technology:** React (Create React App)  
- **Environment:** Docker container using Node.js v20 (alpine)  
- **Requirement:** The app must display `<h1>Codin 1</h1>` and run on port **7775**  
- **Container name:** `li_gavin_coding_assignment11`  
- **Working directory inside container:** `Li_Gavin_site`  

---

## ⚙️ Prerequisites
Make sure you have installed:
- [Docker Desktop](https://www.docker.com/products/docker-desktop)  
- Node.js v20+ (used inside container, but optional on host)  
- Git (for version control and pushing to GitHub)  

---

## 📦 Build the Docker Image
Run this command in the project root folder:

```bash
docker build -t li_gavin_coding_assignment11:dev .
```

This will:
1. Use **node:20-alpine** as the base image.  
2. Set the working directory to `/usr/src/Li_Gavin_site`.  
3. Copy `package.json` and `package-lock.json` into the container.  
4. Run `npm ci` to install all dependencies.  
5. Copy the rest of the application files.  
6. Set environment variables `PORT=7775` and `HOST=0.0.0.0`.  
7. Expose port 7775.  
8. Start the app with `npm start`.  

---

## ▶️ Run the Container
Start the container with the required name and port mapping:

```bash
docker run --rm --name "li_gavin_coding_assignment11" -p 7775:7775 li_gavin_coding_assignment11:dev
```

- `--rm` → automatically remove container when stopped  
- `--name` → container name follows assignment format  
- `-p 7775:7775` → maps host port 7775 to container port 7775  

---

## 🔍 Verify in Browser
Open your browser and go to:

```
http://127.0.0.1:7775
```

You should see a page with:

```html
<h1>Codin 1</h1>
```

✅ This confirms the app is running correctly inside the Docker container.  

Stop the container with `Ctrl + C`.  

---

## 📂 Project Structure
Key files in this repository:
```
coding-assignment-11/
├── public/               # React public files (index.html, favicon, etc.)
├── src/                  # React source files
│   └── App.js            # Modified to display "Codin 1"
├── package.json          # Dependencies and scripts
├── .dockerignore         # Files ignored during Docker build
├── Dockerfile            # Instructions to build the Docker image
└── README.md             # Documentation
```

---

## 🐳 Dockerfile Explained
```dockerfile
FROM node:20-alpine                  # Lightweight Node.js base image
WORKDIR /usr/src/Li_Gavin_site       # Required working directory name
COPY package*.json ./                # Copy dependency files
RUN npm ci                           # Install dependencies cleanly
COPY . .                             # Copy source code into container
ENV PORT=7775                        # Set required port
ENV HOST=0.0.0.0                     # Allow external access
EXPOSE 7775                          # Document port
CMD ["npm", "start"]                 # Start React dev server
```

---

## 🔗 Repository
GitHub link: [Coding Assignment 11](https://github.com/gli58/Coding-Assignment-11)

---

## ✅ Key Points for Evaluation
- Docker environment set up correctly  
- Container name: `li_gavin_coding_assignment11`  
- Working directory: `Li_Gavin_site`  
- App runs on `http://127.0.0.1:7775`  
- Displays `<h1>Codin 1</h1>`  
- README provides clear, detailed instructions  
