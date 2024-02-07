import { defineConfig } from "vite";
import laravel from "laravel-vite-plugin";

export default defineConfig({
    plugins: [laravel(["resources/sass/app.scss", "resources/js/app.js"])],
    resolve: {
        // alias: {
        //     "~bootstrap": path.resolve(__dirname, "node_modules/bootstrap"),
        // },
    },
});
