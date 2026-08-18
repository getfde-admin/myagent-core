
# myAgentCore — Artifacts-Only Repo (发布/产物仓库)

> 本仓库**不含源码**。源码、构建脚本与测试位于私有仓库 `myagent-core-src`。

## 这里有什么

- `GitHubAgentCore/index.js` — 构建后的 Cloudflare Worker bundle（Terraform 读取的产物）
- `GitHubAgentCore/migrations/` — D1 migrations
- `Terraform/` — Cloudflare Worker + D1 IaC
- `.github/workflows/publish-package.yml` — 组装 zip 并部署到 GitHub Pages

## 版本规则

版本号由私有 `myagent-core-src` 维护（`package.json` / `src/config.js`）。本仓库的
`github-agent-worker-package.json` 的 `revision` 由 `publish-package.yml` 每次发布自动写入 git SHA，
不要手动改。

## 变更方式

所有源码变更请提交到 `myagent-core-src`，其 CI 构建后会自动把 `GitHubAgentCore/` 同步回本仓库。
