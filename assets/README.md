# assets

Images, icons, animations and videos that the program itself renders or shows (logo, icons, UI pictures,
intro clips), the same in every environment. **Committed. Everything in here is un-ignored.**
程序自己渲染或展示的图片、图标、动图和视频(logo、图标、界面插图、引导视频),所有环境都一样。**提交到 git;这里的一切都不被忽略。**

- Ready-made subdirectories: `images/`, `icons/`, `animations/` (GIF / WebP / APNG / SVG), `video/`.
  现成的子目录:`images/`、`icons/`、`animations/`(GIF / WebP / APNG / SVG)、`video/`。
- Keep files small: every version stays in git history forever. GitHub rejects any file over 100 MB;
  how to handle bigger ones (Git LFS, a CDN, ...) is up to you. Compress images and video before committing.
  文件要小:每个版本都永远留在 git 历史里。GitHub 会拒绝超过 100 MB 的文件;更大的怎么处理(Git LFS、CDN 等)由你决定。图片和视频压缩后再提交。
- NOT for user uploads or generated pictures (that is `upload/` / `data/`, gitignored), NOT for pictures used
  only in documentation (put those in `docs/images/`).
  不放用户上传或运行时生成的图片(那是被忽略的 `upload/` / `data/`),不放只给文档用的图片(放 `docs/images/`)。
- Check the license allows redistribution; record the source of third-party pictures next to them.
  确认许可证允许再分发;第三方图片在旁边记录来源。
- The `.gitkeep` files only keep the empty directories in git; delete one once the directory has content.
  `.gitkeep` 只是让空目录能被 git 保留;目录里有内容后可以删掉。
