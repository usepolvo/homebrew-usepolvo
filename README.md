# Homebrew Tap for usepolvo

This repository is the Homebrew tap for the `usepolvo` CLI tool. It provides a formula to install the `usepolvo` CLI using Homebrew.

## Installation

To install the `usepolvo` CLI tool, follow these steps:

1. **Add the Tap**

    First, add the `homebrew-usepolvo` tap to your Homebrew:

    ```sh
    brew tap yourusername/usepolvo
    ```

2. **Install usepolvo**

    Once the tap is added, you can install the `usepolvo` CLI tool:

    ```sh
    brew install usepolvo
    ```

## Usage

After installation, you can use the `usepolvo` CLI tool directly from your terminal. Here are some example commands:

- To view the help message:

    ```sh
    usepolvo --help
    ```

- To list customers in Stripe:

    ```sh
    usepolvo stripe list-customers
    ```

- To create a new customer in Stripe:

    ```sh
    usepolvo stripe create-customer --email customer@example.com
    ```

## Updating

To update the `usepolvo` CLI tool to the latest version, use the following command:

```sh
brew update
brew upgrade usepolvo