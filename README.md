# ask

极简 Linux 命令行 LLM 助手。纯 bash 实现，只依赖 curl。

## 安装

```bash
cp ask ~/.local/bin/ask   # 放到 PATH 中
```

## 使用

```bash
ask --set-key sk-xxx            # 设置 API key（也支持 ASK_API_KEY 环境变量）
ask 怎么安装 deb 包              # 直接提问
ask --set-model deepseek-v4-flash
ask --set-endpoint https://api.deepseek.com
ask --help                       # 帮助
```

配置保存在 `~/.config/ask/config`。
