# Ideo Plan Skills

<p align="center">
  <strong>模块化的 AI 题材探索与文章策划系统。</strong>
</p>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0-111111">
  <img alt="Format" src="https://img.shields.io/badge/format-Agent%20Skill-111111">
  <img alt="Languages" src="https://img.shields.io/badge/docs-EN%20%7C%20繁中%20%7C%20简中%20%7C%20한국어-111111">
</p>

<p align="center">
  <a href="./README.md">English</a> ·
  <a href="./README.zh-TW.md">繁體中文</a> ·
  <strong>简体中文</strong> ·
  <a href="./README.ko.md">한국어</a>
</p>

---

## 版本

**Ideo Plan Skills v1.0**，当前主要模块为 **Ideo Plan — Execution Spec v1.0**。

## 这个项目是什么

Ideo Plan 是跨领域的 AI 题材探索与策划技能，帮助用户在深入研究或撰写长文之前发现值得追问的问题，讨论文章方向与初步结构。除了理解用户已提出的想法，也会根据资料线索提出用户尚未想到的可能方向。

本技能将主控与实际规则分开：

- `SKILL.md`：启动、路由、优先级、工作流程与验收。
- `references/spec-dsl.md`：供 AI 使用的特殊语法规则。
- `references/spec-human.md`：可供人阅读的说明。
- `references/examples.md`：使用示例。
- `references/regression-cases.md`：应避免的失败案例。

## 设计原则

### 主控与渐进加载

主控根据任务加载相关规则；详细内容放在参考文件中。根目录的 `SKILL.md` 与 `references/` 是唯一维护来源。修改后运行 `bash scripts/sync-skill-packages.sh`，再运行 `bash scripts/check-skill-packages.sh`。

### 先探索，再确认方向

长文题材过于宽泛时，先进行适量初步调查，提出有资料线索、实质不同的问题与暂定结构，让用户选择、合并或调整，再进行依赖该决定的深入研究或写作。若用户已明确指定方向或要求直接执行，则按指示进行，避免多余确认。

### 调查质量与跨语言探索

根据题材与问题选择适合的来源；需要时搜索当地语言与用词，并尊重用户指定的来源范围。社群讨论可提供当事人经验与线索，热度本身不能证明事实。提出方案时区分资料、观察与待查证事项。

### 随资料调整策划

结构是暂定的。后续研究若出现重要新问题或挑战已确认的方向，应回到用户处讨论；核心方向不变的细部调整可继续进行。不为追求讨论度虚构争议，也不保证社交传播。

## 当前模块：Ideo Plan — Execution Spec v1.0

- 题材范围与用户意图判断
- 适量初步调查与来源选择
- 跨语言搜索与社群资料处理
- 主动发现新方向与读者讨论价值
- 提出方向、暂定结构与确认
- 研究途中检查与灵活调整
- 交接至项目研究规范或选用 Ideo Edit

特殊语法是给模型的指令，并非可执行程序或结果保证；本技能也不替代完整研究、事实核查或写作。

## 安装

根据使用的 AI 工具选择。项目提供 **Codex** 与 **Claude Code** 的插件配置。

## Codex

```text
codex plugin marketplace add and install joyce5438/Ideo-Plan-Skills
```

### 更新

```text
codex plugin marketplace upgrade ideo-plan
```

## Claude Code

```text
/plugin marketplace add joyce5438/Ideo-Plan-Skills
/plugin install ideo-plan@ideo-plan
```

### 更新

```text
/plugin marketplace update ideo-plan
```

# 使用方式

适合探索宽泛题材、发展问题、比较文章方向和讨论初步结构。若指定“先研究讨论，不要写文章”，技能会按此进行。

```text
Ideo Plan，先探索这个题目，提出方向与我讨论。
```

## 调用语

`Ideo Plan` · `Plan topic` · `Topic plan` · `題材企劃` · `規劃題材` · `討論題材` · `想題材` · `想題目` · `討論題目`
