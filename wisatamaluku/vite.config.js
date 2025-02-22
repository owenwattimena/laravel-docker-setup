import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
            ],
            refresh: true,
        }),
    ],
    server: {
        host: '0.0.0.0', // Membuka akses dari jaringan
        port: 5173, // Sesuaikan dengan port yang kamu gunakan
        hmr: {
            host: 'localhost', // Sesuaikan dengan host container
        },
        watch: {
            usePolling: true, // Berguna untuk Docker
        },
    },
});
