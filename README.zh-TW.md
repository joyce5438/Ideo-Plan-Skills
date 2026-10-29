# Ideo Plan Skills

<p align="center">
  <strong>模組化的 AI 題材探索與文章企劃系統。</strong>
</p>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0-111111">
  <img alt="Format" src="https://img.shields.io/badge/format-Agent%20Skill-111111">
  <img alt="Languages" src="https://img.shields.io/badge/docs-EN%20%7C%20繁中%20%7C%20简中%20%7C%20한국어-111111">
</p>

<p align="center">
  <a href="./README.md">English</a> ·
  <strong>繁體中文</strong> ·
  <a href="./README.zh-CN.md">简体中文</a> ·
  <a href="./README.ko.md">한국어</a>
</p>

---

## 版本

**Ideo Plan Skills v1.0**，目前主要模組為 **Ideo Plan — Execution Spec v1.0**。

## 這個專案是什麼

Ideo Plan 是跨領域的 AI 題材探索與企劃技能，協助使用者在深入研究或撰寫長文之前，發現值得追問的問題，討論文章方向與初步架構。除了理解使用者已提出的想法，也會依資料線索提出使用者尚未想到的可能方向。

本技能將主控與實際規則分開：

- `SKILL.md`：啟動、路由、優先級、工作流程與驗收。
- `references/spec-dsl.md`：供 AI 使用的特殊語法規則。
- `references/spec-human.md`：人類可閱讀的說明。
- `references/examples.md`：使用例子。
- `references/regression-cases.md`：應避免的失敗案例。

## 設計原則

### 主控與漸進載入

主控依任務載入相關規則；詳細內容放在參考檔。根目錄 `SKILL.md` 與 `references/` 是唯一維護來源。修改後執行 `bash scripts/sync-skill-packages.sh`，再執行 `bash scripts/check-skill-packages.sh`。

### 先探索，再確認方向

長文題材若過於寬廣，先進行適量初步調查，提出有資料線索、實質不同的問題與暫定架構，讓使用者選擇、合併或調整，再進入依賴該決定的深入研究或寫作。若使用者已明確指定方向或要求直接執行，則依指示進行，避免多餘確認。

### 調查品質與跨語言探索

依題材與問題選擇適合的來源；需要時搜尋當地語言與用詞，並尊重使用者指定的來源範圍。社群討論可提供當事人經驗與線索，聲量本身不能證明事實。呈現提案時區分資料、觀察與待查證事項。

### 隨資料調整企劃

架構是暫定的。後續研究若出現重要新問題或挑戰已確認的方向，應回來與使用者討論；核心方向不變的細部調整可繼續進行。不為追求討論度虛構爭議，也不保證社群擴散。

## 目前模組：Ideo Plan — Execution Spec v1.0

- 題材範圍與使用者意圖判斷
- 適量初步調查與來源選擇
- 跨語言搜尋與社群資料處理
- 主動發現新方向與讀者討論價值
- 提出方向、暫定架構與確認
- 研究中途檢視與彈性調整
- 交接至專案研究規範或選用 Ideo Edit

特殊語法是給模型的指令，並非可執行程式或結果保證；本技能也不取代完整研究、事實查核或寫作。

## 安裝

依使用的 AI 工具選擇。專案提供 **Codex** 與 **Claude Code** 的外掛設定。

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

適合探索寬廣題材、發展問題、比較文章方向，以及討論初步架構。若指定「先研究討論，不要寫文章」，技能會依此進行。

```text
Ideo Plan，先探索這個題目，提出方向與我討論。
```

## 呼叫語

`Ideo Plan` · `Plan topic` · `Topic plan` · `題材企劃` · `規劃題材` · `討論題材` · `想題材` · `想題目` · `討論題目`
