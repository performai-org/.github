# third-party

Ready-made libraries and programs that were NOT built from this repository's source, but are
committed on purpose (prebuilt binaries, vendored libraries, installers, SDK snapshots).
**Committed. Everything in here is un-ignored**, including `*.exe`, `*.dll`, `*.jar`, `build/`.
不是由本仓库源码生成、但**特意提交**的现成库和程序(预编译二进制、vendored 库、安装包、SDK 快照)。
**提交到 git;这里的一切都不被忽略**,包括 `*.exe`、`*.dll`、`*.jar`、`build/`。

- One subdirectory per item, and record where it came from in `third-party/MANIFEST.md`:
  name, version, source URL, license, sha256 of the file.
  每个条目一个子目录,并在 `third-party/MANIFEST.md` 记录:名称、版本、来源 URL、许可证、文件 sha256。
- Prefer a package manager and its lock file (`package-lock.json`, `Cargo.lock`, ...) when one exists;
  use this directory only for things that cannot be fetched that way.
  有包管理器和锁文件时优先用它们;只有拿不到的东西才放这里。
- Keep files small. Very large binaries: use Git LFS (`git lfs track "third-party/**/*.bin"`).
  文件要小;特别大的二进制用 Git LFS。
- Check the license allows redistribution. Never put secrets here (`.env*` and `id_rsa` stay ignored).
  确认许可证允许再分发。不要放密钥(`.env*`、`id_rsa` 仍然被忽略)。
