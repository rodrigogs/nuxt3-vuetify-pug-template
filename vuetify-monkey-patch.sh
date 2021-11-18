#!/usr/bin/env bash
echo "WARNING: This monkey patch should be removed once the issue is fixed."
echo "See: https://github.com/nuxt/framework/discussions/1183"

cat > node_modules/vuetify/lib/util/globals.js << EOF
export const IS_NODE = typeof process !== 'undefined';
export const IN_BROWSER = typeof window !== 'undefined';
export const IS_DEBUG = false; // IS_NODE && process.?env.DEBUG === 'true';
export const IS_PROD = false; // IS_NODE && process.?env.NODE_ENV === 'production';
export const SUPPORTS_INTERSECTION = IN_BROWSER && 'IntersectionObserver' in window;
export const SUPPORTS_TOUCH = IN_BROWSER && ('ontouchstart' in window || window.navigator.maxTouchPoints > 0);
//# sourceMappingURL=globals.mjs.map
EOF
