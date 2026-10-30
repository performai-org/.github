# reference-data

Static, non-secret data that ships with the code and is the same in every environment, e.g. the
lookup table from the first 6 digits of a Chinese ID number to province / city / county, country and
currency codes, dictionaries. **Committed. Everything in here is un-ignored**, including `*.db`, `*.sqlite`.
随代码发布、所有环境都一样、不含敏感信息的静态数据,例如身份证前 6 位对应的省市县、国家/币种代码、字典表。
**提交到 git;这里的一切都不被忽略**,包括 `*.db`、`*.sqlite`。

- NOT for data produced at runtime (that is `data/`, gitignored), NOT for per-environment settings
  (that is `config-ops/`), NEVER for secrets or personal data.
  不放运行时产生的数据(那是被忽略的 `data/`),不放各环境不同的配置(`config-ops/`),绝不放密钥或个人信息。
- Prefer plain, diff-friendly formats (csv / json / yaml / tsv) over binaries.
  优先用纯文本、方便 diff 的格式(csv / json / yaml / tsv)。
- Record where each file came from in `reference-data/MANIFEST.md`: source URL, version or date, license, sha256.
  在 `reference-data/MANIFEST.md` 记录每个文件的来源 URL、版本或日期、许可证、sha256。
- Update by replacing the file in a commit that says why; keep the generating script in the repo if there is one.
  更新就在一次说明原因的提交里替换文件;如果有生成脚本,也放进仓库。
- Very large files: use Git LFS (`git lfs track "reference-data/**/*.bin"`).
  特别大的文件用 Git LFS。
