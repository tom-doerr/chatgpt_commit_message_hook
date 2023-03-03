<h1 align="center">🤖 ChatGPT Commit Message Hook  🪝</h1>

<p align="center">
    Let ChatGPT write your commit messages.
</p>

<p align="center">
    <a href="https://github.com/tom-doerr/chatgpt_commit_message_hook/stargazers"
        ><img
            src="https://img.shields.io/github/stars/tom-doerr/chatgpt_commit_message_hook?colorA=2c2837&colorB=c9cbff&style=for-the-badge&logo=starship style=flat-square"
            alt="Repository's starts"
    /></a>
    <a href="https://github.com/tom-doerr/chatgpt_commit_message_hook/issues"
        ><img
            src="https://img.shields.io/github/issues-raw/tom-doerr/chatgpt_commit_message_hook?colorA=2c2837&colorB=f2cdcd&style=for-the-badge&logo=starship style=flat-square"
            alt="Issues"
    /></a>
    <a href="https://github.com/tom-doerr/chatgpt_commit_message_hook/blob/main/LICENSE"
        ><img
            src="https://img.shields.io/github/license/tom-doerr/chatgpt_commit_message_hook?colorA=2c2837&colorB=b5e8e0&style=for-the-badge&logo=starship style=flat-square"
            alt="License"
    /><br />
    <a href="https://github.com/tom-doerr/chatgpt_commit_message_hook/commits/main"
		><img
			src="https://img.shields.io/github/last-commit/tom-doerr/chatgpt_commit_message_hook/main?colorA=2c2837&colorB=ddb6f2&style=for-the-badge&logo=starship style=flat-square"
			alt="Latest commit"
    /></a>
    <a href="https://github.com/tom-doerr/chatgpt_commit_message_hook"
        ><img
            src="https://img.shields.io/github/repo-size/tom-doerr/chatgpt_commit_message_hook?colorA=2c2837&colorB=89DCEB&style=for-the-badge&logo=starship style=flat-square"
            alt="GitHub repository size"
    /></a>

   <!--<img src="https://badges.pufler.dev/visits/tom-doerr/chatgpt_commit_message_hook?style=for-the-badge&color=96CDFB&logoColor=white&labelColor=302D41"/>-->


</p>

<p align="center">
    <img src='https://github.com/tom-doerr/bins/raw/main/chatgpt_commit_message_hook/cc6.gif'>
    <p align="center">
        ChatGPT will provide a suggestion for the commit message.
    </p>
</p>






# ChatGPT Commit Message Hook
## What is it?
This is a hook for git that generates commit messages.
It uses [OpenAI's ChatGPT](https://openai.com/blog/chatgpt)
to generate commit messages.

## How do I install it?
### Setup
1. Install the OpenAI API package (`pip install openai`).
2. Create a file at `$XDG_CONFIG_HOME/openaiapirc` with your API keys.
For example:
```
[openai]
secret_key = MY_SECRET_KEY
```
3. Install the hook:
```
destination="/usr/share/git-core/templates/hooks/prepare-commit-msg"
sudo wget https://raw.githubusercontent.com/tom-doerr/chatgpt_commit_message_hook/main/prepare-commit-msg -O $destination
sudo chmod +x $destination
```

This will set up the hook for all new repositories. 
To add the hook to an existing repository, run `git init`.

## How does it work?
The hook gets the current commit message, runs ChatGPT to generate a new commit
message, and then replaces the current commit message with the generated message.

