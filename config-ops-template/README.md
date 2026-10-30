# config-ops-template

配置**模板**(占位值,文件名带 `.example`),可以提交、可以开源。**不要写真实密钥。**
Config **templates** (placeholder values, files end in `.example`). Safe to commit/open-source. **No real secrets.**

- 真实配置放私有仓库,部署时复制到本项目的 `config-ops/`(已 .gitignore);程序只读 `config-ops/`。
  Real config lives in a private repo and is copied into `config-ops/` (gitignored); the program reads only `config-ops/`.
- 例 / e.g.: `app.json.example` -> real file `app.json`.
