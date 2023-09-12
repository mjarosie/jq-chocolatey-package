# jq-chocolatey-package

A repository with chocolatey configuration for `jq` package: https://chocolatey.org/packages/jq

`jq` itself can be found and manually downloaded from here: https://jqlang.github.io/jq/

## Updating the chocolatey package

- Update `version` and tags in `./jq.nuspec`
- Update `url`s and `checksum`s in `./tools/chocolateyinstall.ps1` (get checksums from [the releases page](https://github.com/jqlang/jq/releases/))
- Build, test & push the package following instructions below

### Building, testing & pushing the package

Given `.nuspec` that this repository contains, to build the `.nupkg` file, run:

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

Then if you're the maintainer of this Chocolatey repository and want to upgrade the package (e.g. when `jq` got a new release), commit the changes and run:

```
choco push -s https://push.chocolatey.org/
```

You might need to obtain the API key first.

For more details see https://chocolatey.org/docs/create-packages.
