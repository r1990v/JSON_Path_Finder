// vite.config.js
export default {
  server: {
    host: true,    // Listen on all addresses (0.0.0.0)
    port: 4173,    // Fixed port
    strictPort: true, // Fail if the port is already in use
  },
};