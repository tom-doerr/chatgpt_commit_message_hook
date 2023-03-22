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
1. Install packages (`pip install -r requirements.txt`).
2. Create a file at `$XDG_CONFIG_HOME/openaiapirc` with your API keys.
3. [optional] Add proxy server settings to the config file. Http proxy is supported only.
4. [optional] The maximum number of changed lines in a commit. If the number of changed lines is greater than this value, the hook will send the result of git diff --cached --stat, otherwise it will send git diff --cached. The default value is 80.

For example:
```
[openai]
secret_key = MY_SECRET_KEY
proxy= HTTP_PROXY
max_changed_lines=80
```
5. Install the hook:
```
git clone https://github.com/jsfs2019/chatgpt_commit_message_hook
cd chatgpt_commit_message_hook
sudo make install
```

This will set up the hook for all new repositories. 
To add the hook to an existing repository, run `git init`.

## How does it work?
The hook gets the current commit message, runs ChatGPT to generate a new commit
message, and then replaces the current commit message with the generated message.

