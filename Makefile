.PHONY: install

ifeq ($(shell uname),Darwin)
  HOOKS_DIR = /usr/local/Homebrew/.git/hooks
else
  HOOKS_DIR = /usr/share/git-core/templates/hooks
endif

install:
	@echo "Installing ChatGPT commit message hook..."
	@sudo mkdir -p $(HOOKS_DIR)
	@sudo cp prepare-commit-msg $(HOOKS_DIR)/
	@sudo chmod +x $(HOOKS_DIR)/prepare-commit-msg
	@echo "ChatGPT commit message hook installed successfully."

install-local:
	@echo "Installing ChatGPT commit message hook locally..."
	@cp prepare-commit-msg .git/hooks/prepare-commit-msg
	@chmod +x .git/hooks/prepare-commit-msg
	@echo "ChatGPT commit message hook locally installed successfully."
