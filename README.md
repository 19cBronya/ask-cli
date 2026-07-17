# ask

极简 Linux 命令行 LLM 助手。零依赖，纯 Python 标准库。

## 安装

```bash
cp ask /usr/local/bin/ask   # 或放到 PATH 中的任意目录
```

## 使用

```bash
ask --set-key sk-xxx             # 设置 API key（也可用 OPENAI_API_KEY 环境变量）
ask 怎么安装 deb 包              # 直接提问
ask --set-model gpt-4o           # 切换模型
ask --set-endpoint https://...   # 切换 API 地址
ask --help                       # 帮助
```

配置保存在 `~/.config/ask/config.json`。
