# Suim - Sui Version Manager

Suim is a simple version management tool for Sui, supporting multi-version installation and switching.

## Quick Installation

```bash
curl -o- https://raw.githubusercontent.com/nextuser/suim/refs/heads/main/install.sh | bash
```

or

```bash
wget -qO- https://raw.githubusercontent.com/nextuser/suim/refs/heads/main/install.sh | bash
```

## Usage

- `suim list` - List installed versions
- `suim version` - Show current version
- `suim version-remote` - List available remote versions
- `suim install <version>  [--with-proxy] ` - Install specified version
- `suim use <version>` - Switch to specified version
- `suim uninstall <version>` - Uninstall specified version

## Examples

```bash
# Install a specific version
suim install mainnet-v1.40.3

# Switch version
suim use mainnet-v1.40.3

# Check current version
suim version

# List all installed versions
suim list

# Show available remote versions
suim version-remote

# Remove a version
suim uninstall mainnet-v1.40.3
```

## Requirements

- Linux/macOS operating system
- curl or wget
- tar
- Basic Unix tools

## Directory Structure

The tool uses the following directory structure:
```
~/.suim/
  ├── versions/         # Stores all installed versions
  └── current          # Records current active version
```

## Troubleshooting

If you encounter any issues:

1. Ensure you have the required permissions
2. Check your internet connection for downloads
3. Verify the version exists in the remote repository
4. Make sure you have enough disk space

## Contributing

Contributions are welcome! Please feel free to submit pull requests.

## License

MIT License

## Acknowledgments

Inspired by nvm (Node Version Manager)
