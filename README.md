# jq-chocolatey-package

A repository with chocolatey configuration for `jq` package: https://chocolatey.org/packages/jq

`jq` itself can be found and manually downloaded from here: https://jqlang.github.io/jq/

## Updating the chocolatey package

- Update `<version>` / `<iconUrl>` tags in `./jq.nuspec`
- Update `version` and `checksum`s in `./tools/chocolateyinstall.ps1` (get checksums from [the releases page](https://github.com/jqlang/jq/releases/))
- Create a new branch and create a PR against `main`
- If status checks pass, merge the PR

Package gets published automatically to the Chocolatey Community Repository with every push to the default branch.

As of version `1.8.2`, Windows arm64 builds exist upstream (`jq-windows-arm64.exe`), but this package only ships x86/x64 until Chocolatey adds first-class ARM support in its packaging helpers ([choco#1803](https://github.com/chocolatey/choco/issues/1803)).

### Building, testing & pushing the package manually

Given `.nuspec` that this repository contains, to build the `.nupkg` file, run the following commands (make sure to run your console as admin):

```
choco pack
```

To make sure the new configuration works, run:

```
choco upgrade jq --source .
```

... or if you don't have `jq` installed yet, run:

```
choco install jq --source .
```

To manually publish the package, run:

```
choco push -s https://push.chocolatey.org/
```

You might need to obtain the API key first.

For more details see https://chocolatey.org/docs/create-packages.
