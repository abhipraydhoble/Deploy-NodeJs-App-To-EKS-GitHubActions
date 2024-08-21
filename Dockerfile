name: Simple CI Pipeline

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      # Checkout the code from the repository
      - name: Checkout code
        uses: actions/checkout@v4  # Updated to the latest version

      # Set up Node.js environment
      - name: Set up Node.js
        uses: actions/setup-node@v4  # Updated to the latest version
        with:
          node-version: '14'

      # Install dependencies
      - name: Install dependencies
        run: npm install

      # Run tests
      - name: Run tests
        run: npm test

      # Build the project (optional, depending on your project)
      - name: Build project
        run: npm run build
