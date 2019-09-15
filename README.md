# jq-chocolatey-package

A repository with chocolatey configuration for `jq` package: https://chocolatey.org/packages/jq

`jq` itself can be found and manually downloaded from here: https://stedolan.github.io/jq/

## Building the package

Given `.nuspec` that this repository contains, to build the `.nupkg` file, run:

```
choco pack
```

Then if you're the maintainer of this Chocolatey repository and want to upgrade the package (e.g. new release), run:

```
choco push -s https://push.chocolatey.org/
```

You might need to obtain the API key first.

For more details see https://chocolatey.org/docs/create-packages.