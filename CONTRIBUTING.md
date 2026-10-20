# Contributing Guidelines

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome.

Thank you for your interest in contributing to the Simple Interest Calculator project! Please follow these guidelines to make the contribution process smooth and effective for everyone.

## 1. Reporting Bugs

- Check existing issues and pull requests to ensure the bug has not already been reported.
- If you find a new bug, please open an issue describing:
  - The behavior you observed.
  - The expected behavior.
  - Step-by-step instructions to reproduce the issue.
  - Your environment details (operating system, shell version).

## 2. Suggesting Improvements

- Feature suggestions and enhancements are welcome.
- Open an issue outlining your proposed change, why it would be beneficial, and any implementation details or alternatives you have considered.

## 3. Making Changes on a Separate Branch

- Fork the repository and clone your fork locally.
- Always create a new, descriptive feature or fix branch from `main`:
  ```bash
  git checkout -b feature-or-fix-name
  ```
- Keep commits focused and provide clear, descriptive commit messages.

## 4. Testing Changes Before Submitting

- Test all changes thoroughly in your local environment.
- Run `simple-interest.sh` with valid inputs, invalid numeric inputs, and edge cases to ensure no regressions occur.
- Verify script permissions and portable syntax.

## 5. Submitting Pull Requests

- Push your branch to your forked repository:
  ```bash
  git push origin feature-or-fix-name
  ```
- Open a Pull Request against the `main` branch of the upstream repository.
- Include a clear title and description explaining what was changed and referencing any related issues.
- Be responsive to feedback or review requests from project maintainers.
