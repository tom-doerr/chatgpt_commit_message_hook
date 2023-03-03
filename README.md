# chatgpt_commit_message_hook
## What is it?
This is a commit-msg hook for git that generates commit messages.
It uses [OpenAI's ChatGPT](https://openai.com/blog/chatgpt)
to generate commit messages.
## How do I install it?
### Setup
1. Install the [OpenAI API](https://github.com/openai/api-client-python)
(`pip install openai`).
2. Create a file at `$XDG_CONFIG_HOME/openaiapirc` with your API keys.
For example:
```
[openai]
secret_key = MY_SECRET_KEY
```
3. Install this hook:
```
destination="$(git --exec-path)/templates/hooks/prepare-commit-msg"
sudo wget https://raw.githubusercontent.com/tom-doerr/chatgpt_commit_message_hook/main/prepare-commit-msg -O $destination
sudo chmod +x $destination
```
## How does it work?
The hook gets the current commit message, runs GPT-3 to generate a new commit
message, and then replaces the current commit message with the generated message.
## Why use it?
Git's default commit message
