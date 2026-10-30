# File names that keep test runners away / 避免被自动测试收集的文件名

Everything in `manual-tests/` is run by a person. If an automatic test runner (locally or in CI) collects
a file from here, a "manual" step will suddenly run, fail or hang the build. Runners decide by **file name**
(and sometimes directory name), so choose names carefully.
`manual-tests/` 里的东西由人来执行。如果自动测试运行器(本地或 CI)把这里的文件收集进去,手工步骤就会突然被执行、失败或卡住构建。
运行器靠**文件名**(有时也靠目录名)判断,所以起名要小心。

## The simple rule / 最简单的规则

1. Name files `check-<topic>.md` / `check-<topic>.sh`; only `.md` and `.sh`. / 文件命名为 `check-<主题>.md` / `check-<主题>.sh`;只放 `.md` 和 `.sh`。
2. The file name must not contain `test` or `spec` (any case). / 文件名里不要出现 `test` 或 `spec`(不分大小写)。
3. No sub-directories named `test`, `tests`, `spec`, `__tests__`, `t`, `testdata`. / 不要建名为 `test`、`tests`、`spec`、`__tests__`、`t`、`testdata` 的子目录。
4. Never add `__init__.py`, `conftest.py`, `main.rs`, `*.csproj`, `*.sln`, `CMakeLists.txt`, `*.t`, `*.bats`. / 不要放这些文件。

## Suggested names / 建议的文件名

Use the prefix **`check-`** for everything here. It is a plain word that no test runner matches.
这里所有文件都用 **`check-`** 前缀。它是普通单词,没有任何测试运行器会匹配它。

| Purpose / 用途 | File name / 文件名 |
|---|---|
| Steps a person follows and what to expect / 人照着做的步骤和期望结果 | `check-install.md`, `check-upgrade.md`, `check-release.md` |
| A helper script a person runs / 人来运行的辅助脚本 | `check-environment.sh`, `check-backup-restore.sh` |
| Notes on a run / 某次执行的记录 | `check-install-2025-01-15.md` |

Pattern / 模式: `check-<topic>.md` and `check-<topic>.sh`.

## What each runner collects (defaults) / 各运行器默认会收集什么

These are the usual defaults; your project's own configuration can change them, so check it too.
这些是常见的默认规则;项目自己的配置可能改变它们,也要看一下。

| Ecosystem / runner | Collects / 会收集 | So avoid / 所以避开 |
|---|---|---|
| Python `unittest` | `test*.py` inside packages (dirs with `__init__.py`) | `test*.py`, `__init__.py` |
| Python `pytest` | `test_*.py`, `*_test.py`; loads `conftest.py` | `test_*.py`, `*_test.py`, `conftest.py` |
| Node `jest` | `*.test.js/ts/jsx/tsx`, `*.spec.*`, anything in `__tests__/` | `*.test.*`, `*.spec.*`, `__tests__/` |
| Node `vitest` | `*.test.*`, `*.spec.*` (js, mjs, cjs, ts, jsx, tsx) | same |
| Node `mocha` | `./test/*.js` | a `test/` directory |
| Node `node --test` | `*.test.js`, `test-*.js`, `*-test.js`, `*_test.js`, files in `test/` | those names, `test/` |
| Go `go test ./...` | `*_test.go` in any directory (skips dirs starting with `_` or `.`, and `testdata`) | `*_test.go`, any `.go` file |
| Rust `cargo test` | `tests/*.rs`, `tests/<dir>/main.rs`, `#[test]` in `src/` | `.rs` files, `main.rs` |
| Java / Kotlin (Maven, Gradle) | `Test*.java`, `*Test.java`, `*Tests.java`, `*TestCase.java` under `src/test` | those names, `.java` / `.kt` files |
| C# / .NET `dotnet test` | test projects (`*.csproj` / `*.sln` with a test SDK; `[Fact]`, `[Test]`) | `.csproj`, `.sln`, `.cs` files |
| Ruby `rspec` | `spec/**/*_spec.rb` | `*_spec.rb`, a `spec/` directory |
| Ruby minitest / rake | `test/**/test_*.rb`, `*_test.rb` | those names, a `test/` directory |
| PHP `phpunit` | `*Test.php` in directories named in `phpunit.xml` | `*Test.php` |
| C / C++ (CTest, GoogleTest) | whatever `add_test(...)` in `CMakeLists.txt` registers | `CMakeLists.txt`, `.c` / `.cpp` files |
| Swift `swift test` | `Tests/` directory, `*Tests.swift` | `Tests/`, `.swift` files |
| Perl `prove` | `t/*.t` | `*.t`, a `t/` directory |
| R (`testthat`, `R CMD check`) | `tests/testthat/test-*.R`, `tests/*.R` | `.R` files |
| Elixir `mix test` | `test/**/*_test.exs` | `*_test.exs` |
| Dart / Flutter `flutter test` | `test/**/*_test.dart` | `*_test.dart`, `.dart` files |
| Julia `Pkg.test()` | `test/runtests.jl` | `runtests.jl` |
| Lua `busted` | `*_spec.lua` | `*_spec.lua` |
| Shell `bats` | `*.bats` | `*.bats` |
| Anything in CI | broad globs such as `**/*test*` | no "test" / "spec" in names |
