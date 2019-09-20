module.exports = {
  env: {
    es6: true,
    node: true,
  },
  parser: '@typescript-eslint/parser',
  plugins: '/usr/local/lib/node_modules/eslint-plugin-import',
  extends: [
    '/usr/local/lib/node_modules/eslint-config-airbnb-base',
    'plugin:import/errors',
    'plugin:import/warnings',
    'plugin:import/typescript ',
  ],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parserOptions: {
    ecmaVersion: 2020,
    sourceType: 'module',
    ecmaFeatures: {
      jsx: true,
    },
  },
  rules: {},
};
