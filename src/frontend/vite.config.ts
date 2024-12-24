import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: { 
    host: true, 
    port: 5173, 
    proxy: { 
      '/api': { 
        target: 'http://localhost:3000', 
        changeOrigin: true, 
        rewrite: path => path.replace(/^\/api/, '') 
      } 
    }
  },
  esbuild: { 
    define: { 
      'import.meta.url': JSON.stringify(''), 
      'import.meta.dirname': JSON.stringify(''), 
      'import.meta.filename': JSON.stringify(''), 
    }, 
  },
})
