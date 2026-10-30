# manual-tests

Test steps that a person runs by hand (checklists, one-off scripts, things automation cannot cover).
**Committed; never gitignored.**
需要人手工执行的测试步骤(检查清单、一次性脚本、自动化覆盖不了的内容)。**提交到 git,绝不忽略。**

Automated tests live in `tests/`. Nothing here may be picked up by an automatic test runner, so:
自动化测试在 `tests/`。这里的东西不能被任何自动测试运行器收集,所以:

- Write checklists as `.md` and helper scripts as `.sh`. No test-framework code files.
  检查清单写成 `.md`,辅助脚本写成 `.sh`,不要放测试框架的代码文件。
- **Name every file `check-<topic>.md` or `check-<topic>.sh`** (for example `check-install.md`, `check-backup.sh`),
  so that automatic test frameworks never collect and run them. Do not put `test` or `spec` in the name.
  Why, and what each framework collects: [FILE-NAMING.md](FILE-NAMING.md).
  **所有文件都命名为 `check-<主题>.md` 或 `check-<主题>.sh`**(例如 `check-install.md`、`check-backup.sh`),
  这样自动化测试框架不会收集和执行它们。名字里不要出现 `test` 和 `spec`。原因和各框架的收集规则见 [FILE-NAMING.md](FILE-NAMING.md)。
- Write down: what to do, what you expect to see, and the date, version and environment of the last run.
  记录:怎么做、期望看到什么,以及上次执行的日期、版本和环境。
- Scratch output of a manual run goes to `tmp/` (gitignored), not here.
  手工运行产生的临时输出放 `tmp/`(被忽略),不要放这里。
