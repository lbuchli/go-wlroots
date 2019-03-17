# go-wlroots fork

__go-wlroots__ is a __WIP__ Go binding for
[wlroots](https://github.com/swaywm/wlroots). Note: The API is incomplete and
subject to change.

To test go-wlroots [SirCmpwn's Tiny Wayland
compositor](https://gist.github.com/ddevault/ae4d1cdcca97ffeb2c35f0878d75dc17) was ported to it:

![](https://alexbakker.me/u/a6v2nu16.png)

The source of tinywl can be found in [cmd/tinywl](cmd/tinywl).

## Compiling

Go 1.8 or newer is required.

Make sure [wlroots](https://github.com/swaywm/wlroots) and its dependencies are
installed.

Run ``make all`` to build everything. Binaries can be found in the 'build'
folder.

## License

The source code of this project is licensed under the [MIT license](LICENSE).
