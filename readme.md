<div align="center">
  <h1> Corp Value Chain </h1>
</div>

**CVC** (Corp Value Chain) 是一个基于区块链技术的轻量级私有链项目，将用户对企业的评分以不可篡改的方式存储在区块链上，保证评分记录的真实性和可靠性。其旨在实现用户对任意企业评分的存储和管理，并提供
**去中心化** 和 **抗审查** 的特性。

![CorpValueChain Logo](./public/logo.png)

[![Release](https://img.shields.io/github/release/muyu66/corp-value-chain.svg?style=flat-square)](https://github.com/muyu66/corp-value-chain/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

## 特性

- **去中心化**: 对企评分数据不存在于中心化数据库之中，抹除了服务提供商可能对数据产生的影响。
- **抗审查**: CVC不受任何中大型公司的管控。去中心化保障你在CVC上产生的评分不容他人干涉。
- **匿名性**: 传统评分系统需要账号作为身份标记(甚至手机号)，区块链使用唯一地址作为标记，可以避免被大型企业追踪。
- **P2P网络**: 在**CVC**上，你可以直接和所有人一起产生评分行为、计算企业评分。不需要依靠任何中间服务商。
- **开放式网络**: 任何人都可以和**CVC**网络交互。这样，您就可以管控自己的言论和身份信息，而不是让服务提供商掌控。
- **可重复计算**: 无论何时何地，基于不可篡改的区块数据，算法引擎就能恒定计算企业评分，而不受外部干扰。
- **零费用**: 不同于常见区块链项目，**CVC**通过内置奖惩逻辑、限制手段来代替常见的权益证明或者工作量证明，从而实现零费用。
- **零配置运行节点**: 不同于常见区块链项目，**CVC**节点的运行，只需要一行Docker代码即可启动！
- **开源**: 阿巴阿巴

## 常见问题

1. **什么是区块链?**

区块链是一个交易数据库，在网络上多台电脑之间更新和共享。每次添加一组新交易时，就称其为“区块”，这也是区块链名称的由来。区块链，允许任何人添加数据，但不能删除数据。如果有人想要篡改任何信息或欺骗系统，他们必须在网络中的大多数电脑上操作。这样做工作量巨大！这使得去中心化区块链具备很高的安全性。

2. **CVC的能源消耗如何?**

阿巴阿巴

## 安装与使用

1. **Docker**

```bash
docker run -it chinxn/corp-value-chain:latest
```

2. **源码编译Docker**

```bash
go build -ldflags="-s -w"
docker build -t corp-value-chain:latest .
docker run -it chinxn/corp-value-chain:latest
```

3. **源码编译**

```bash
go build -ldflags="-s -w"
./corp-value-chain
```

## 贡献指南

我们欢迎任何形式的贡献！如果你有任何建议或发现了 Bug，请在 GitHub 上提交 issue 或者提出 PR。

## 联系方式

如果您有任何问题或建议，可以通过以下方式联系我们：

- 邮箱：muyu.zhouyu@outlook.com

## 项目状态

CVC 目前处于开发阶段，我们正在积极推进项目的开发和完善，敬请期待更多功能的上线！

## License

© Zhouyu, 2024

Released under the [MIT License](https://github.com/muyu66/git-to-dailyreport/blob/master/LICENSE)