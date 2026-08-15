# myAgentCore (公开发布 repo)

> **公开产物仓库（不含源码）**。这里只存放构建后的产物，源码在私有的 [`myagent-core-src`](https://github.com/getfde-admin/myagent-core-src)。

内含**预先打包好的 Cloudflare Worker**、**Terraform** 设定、以及 **D1 migrations**，是「Agent堡」部署时实际跑起来的核心。

## 结构

```
myAgentCore/
├── GitHubAgentCore/
│   ├── index.js              # 【build 产物】Cloudflare Worker（压缩 bundle）← Terraform 读这个
│   └── migrations/           # D1 database migrations（0001–0005）
├── Terraform/                # Cloudflare Worker + D1 IaC 定义
├── actions/                  # 管理 workflow（publish 时从 myagent-toolkit 拉取）
├── github-agent-worker-package.json  # 发布 manifest
└── .github/workflows/        # publish-package.yml（发布）
```

## 来源

`main` 的 `GitHubAgentCore/` 由私有 `myagent-core-src` 的 CI 在每次构建后自动提交回本仓库。任何对本目录的源码级编辑请改到 `myagent-core-src`。

## 发布

Push 到 `main` 自动发布到 GitHub Pages，已部署实例通过 `/autoupdate` 自动拉取新版本。
