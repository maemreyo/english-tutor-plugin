# English Tutor Plugin Installation Guide

This plugin is designed to work with **Claude Code**. Follow these steps to install and use it in your project.

## Proven Plugin Structure

Ensure your plugin directory has the following structure:

```
workspace/english-tutor/
├── .claude-plugin/
│   ├── marketplace.json      # Marketplace definition
│   └── plugin.json           # Plugin manifest
├── agents/
│   └── structure-analyst.md  # Agent definition
├── skills/
│   └── english-grammar/
│       └── SKILL.md          # Skill guide
├── commands/
│   └── structure.md          # Command definition
└── assets/
    └── example-filled-structure.md # Sample file
```

## Method 1: Local Installation (Dev Mode)

This is the fastest way to test the plugin without publishing to GitHub.

1.  **Open Claude Code CLI** at the project root (`cc-glean`).

2.  **Add Local Directory as Marketplace**:
    Register the plugin folder as a marketplace source:
    ```bash
    /plugin marketplace add ./workspace/english-tutor
    ```
    *Note: This reads `workspace/english-tutor/.claude-plugin/marketplace.json` to register the definition.*

3.  **Install the Plugin**:
    Once the marketplace is added (it will be named `local-english-tutor` as defined in the JSON file), install the plugin:
    ```bash
    /plugin install english-tutor@local-english-tutor
    ```
    *Note: If you are reinstalling updates, run `/plugin uninstall english-tutor` first.*

4.  **Verify**:
    Type `/help` to check if `/structure` command is available, or simply run:
    ```bash
    /structure --dry-run
    ```

## Method 2: GitHub Distribution (Recommendation)

To use the version hosted on GitHub:

1.  **Add the Marketplace**:
    Register the repository as a marketplace source:
    ```bash
    /plugin marketplace add maemreyo/english-tutor-plugin
    ```

    **Configuration Reference**
    For this to work, the repository must contain these files:

    `.claude-plugin/plugin.json`:
    ```json
    {
      "name": "english-tutor",
      "version": "1.0.0",
      "description": "English learning assistant...",
      "commands": [
        "./commands/structure.md"
      ],
      "agents": [
        "./agents/structure-analyst.md"
      ]
    }
    ```

    **Root** `.claude-plugin/marketplace.json` (at repo root):
    ```json
    {
      "name": "maemreyo-english-tutor",
      "owner": {
        "name": "maemreyo"
      },
      "plugins": [
        {
          "name": "english-tutor",
          "description": "English learning assistant...",
          "source": "./workspace/english-tutor"
        }
      ]
    }
    ```

2.  **Install the Plugin**:
    Install the plugin from the new source:
    ```bash
    /plugin install english-tutor@maemreyo-english-tutor
    ```

3.  **Verify**:
    ```bash
    /structure --dry-run
    ```

## Usage

After successful installation, execute the command:
```bash
/structure
```
This will scan for pending grammar structure files and use the `english-tutor:structure-analyst` agent to process them.
