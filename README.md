# Rust for Tarantool

[![Tarantool][tarantool-badge]][Tarantool]
[![Rust][rust-badge]][Rust]
[![License][license-badge]][license-url]

A proof-of-concept **Rust** module for **Tarantool**.

This example demonstrates how to use [Rust Programming Language][Rust]
to write stored procedures for [Tarantool].

**[Tarantool]** is a full-featured general-purpose database and an application server.

**[Rust]** is a systems programming language that runs blazingly fast,
prevents segfaults, and guarantees thread safety.

## Prerequisites

 * Tarantool 1.6.8+
 * rustc 1.14.0 and cargo 0.15.0 (other versions untested)

```bash
sudo apt-get -y install rustc cargo
```

## Usage

```bash
git clone https://github.com/rtsisyk/tarantool-rust.git
cargo build
./test.lua
```

```
rust fiber 102: before sleep
rust fiber 103: before sleep
rust fiber 104: before sleep
rust fiber 105: before sleep
rust fiber 106: before sleep
rust fiber 102: after sleep
rust fiber 102: before sleep
rust fiber 103: after sleep
rust fiber 103: before sleep
```

The example above demonstrates that Rust libraries can be used inside Tarantool without any conflicts with cooperative-multistasking model implemented by Tarantool.

## Future Plans

* Implement Rust-friendly wrappers for Fibers, Box and [other](src/module.rs) Tarantool API
* Add examples
* Write documentation

[<img src="https://octodex.github.com/images/codercat.jpg" width="200">][Telegram]

Fall in love with [Tarantool]?  Wanna learn [Rust]?

**Your contribution is needed!**

Feel free to contact us on [Telegram] channel or send a pull request.

See Also
--------

* [Tarantool]
* [Rust]
* [Maillist]
* [Telegram]
* roman@tsisyk.com

[tarantool-badge]: https://img.shields.io/badge/Tarantool-1.7-blue.svg?style=flat
[Tarantool]: https://tarantool.org/
[rust-badge]: https://img.shields.io/badge/Rust-1.14.0-black.svg?style=flat
[Rust]: https://www.rust-lang.org
[license-badge]: https://img.shields.io/badge/License-BSD--2-lightgray.svg?style=flat
[license-url]: LICENSE.md
[Telegram]: http://telegram.me/tarantool
[Maillist]: https://groups.google.com/forum/#!forum/tarantool
