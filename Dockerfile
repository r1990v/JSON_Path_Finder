# Use an official Node.js runtime as a parent image
FROM node:18

# Install pnpm globally
RUN npm install -g pnpm

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (or pnpm-lock.yaml) to the container
COPY package*.json pnpm-lock.yaml* ./

# Install dependencies using pnpm
RUN pnpm install

# Copy the rest of the application code to the container
COPY . .

# Build the application using pnpm
RUN pnpm run build

# Expose port if your application listens to one (default for Vite is 5173)
EXPOSE 5173

# Command to run the application (vite preview serves the app)
CMD ["pnpm", "run", "preview"]