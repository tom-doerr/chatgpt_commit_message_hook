.PHONY: install

install:
	@echo "Installing ChatGPT commit message hook..."
	@sudo cp prepare-commit-msg /usr/share/git-core/templates/hooks/prepare-commit-msg
	@sudo chmod +x /usr/share/git-core/templates/hooks/prepare-commit-msg
	@echo "ChatGPT commit message hook installed successfully."

install-local:
	@echo "Installing ChatGPT commit message hook locally..."
	@cp prepare-commit-msg .git/hooks/prepare-commit-msg
	@chmod +x .git/hooks/prepare-commit-msg
	@echo "ChatGPT commit message hook locally installed successfully."
