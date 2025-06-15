# Contributing to 42ghcr

First of all, thank you for taking the time to contribute to **42ghcr**!
The project is very simple, but any help is still greatly appreciated.

## 🚀 Getting Started

1. **Fork** the repository.
2. **Create a new branch** for your changes:
    
        git checkout -b my-feature

3. Make your changes in that branch.
4. Test your changes (if applicable).
5. Commit with a meaningful message.
6. Push to your fork:
    
        git push origin my-feature

7. **Open a pull request** (PR) to the `main` branch with a clear description.

## ✅ Pull Request Checklist

Before submitting a PR please ensure that:

- Your branch is up to date with `main`.
- You’ve explained **why** your changes are needed.
- You have tested your changes.

## 🧪 Testing Your Changes

To test the Docker image locally:

    docker build -t 42ghcr:local .
    docker run -it --rm 42ghcr:local bash

Ensure that anything you add is funcitonal inside the container. As this is
pretty much just an ubuntu image with preinstalled tools, you can just check
if all tools are present.

## 💬 Need Help?

If you’re unsure about something or need feedback before making a PR, feel free
to open an issue to discuss it, you can also reach me out on discord, @xdec0de_.
