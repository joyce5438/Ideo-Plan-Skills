# Ideo Plan Skills

<p align="center">
  <strong>모듈형 AI 주제 탐색 및 글 기획 시스템.</strong>
</p>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0-111111">
  <img alt="Format" src="https://img.shields.io/badge/format-Agent%20Skill-111111">
  <img alt="Languages" src="https://img.shields.io/badge/docs-EN%20%7C%20繁中%20%7C%20简中%20%7C%20한국어-111111">
</p>

<p align="center">
  <a href="./README.md">English</a> ·
  <a href="./README.zh-TW.md">繁體中文</a> ·
  <a href="./README.zh-CN.md">简体中文</a> ·
  <strong>한국어</strong>
</p>

---

## 버전

**Ideo Plan Skills v1.0**의 주요 모듈은 **Ideo Plan — Execution Spec v1.0**입니다.

## 이 프로젝트는 무엇인가

Ideo Plan은 분야에 제한 없이 주제를 탐색하고 기획하는 AI 스킬입니다. 본격적인 조사나 긴 글을 쓰기 전에 탐구할 만한 질문을 발견하고, 글의 방향과 잠정적인 구성을 사용자와 논의합니다. 사용자가 말한 관심사뿐 아니라 자료에서 발견한 새로운 가능성도 제안합니다.

컨트롤러와 실행 규칙을 분리합니다.

- `SKILL.md`: 활성화, 라우팅, 우선순위, 작업 흐름과 검수.
- `references/spec-dsl.md`: AI를 위한 DSL 형식의 실행 규칙.
- `references/spec-human.md`: 사람이 읽을 수 있는 설명.
- `references/examples.md`: 사용 사례.
- `references/regression-cases.md`: 방지해야 할 실패 사례.

## 설계 원칙

### 컨트롤러와 점진적 로딩

컨트롤러가 작업에 필요한 규칙을 로드하며, 세부 규칙은 참조 파일에 둡니다. 루트의 `SKILL.md`와 `references/`가 유일한 원본입니다. 수정 후 `bash scripts/sync-skill-packages.sh`와 `bash scripts/check-skill-packages.sh`를 실행합니다.

### 먼저 탐색하고 방향을 확인한다

긴 글의 주제가 넓고 방향이 불분명하면 적절한 범위에서 먼저 조사합니다. 자료에 근거한 서로 다른 질문과 잠정 구성을 제안하고 사용자가 선택·수정·결합하도록 한 뒤, 그 결정에 의존하는 심층 조사나 집필을 진행합니다. 사용자가 방향이나 직접 실행을 명확히 지정했다면 불필요한 확인 없이 그 지시를 따릅니다.

### 조사 품질과 다국어 탐색

주제와 질문에 적합한 출처를 고릅니다. 필요할 때 현지 언어와 실제 용어로 검색하고 사용자가 정한 출처 제한을 존중합니다. 소셜 미디어는 당사자 경험과 단서를 제공하지만 인기가 사실을 증명하지는 않습니다. 자료, 해석과 추가 확인 사항을 구분합니다.

### 자료에 따라 기획을 조정한다

구성은 잠정적입니다. 연구 중 중요한 새 질문이 나오거나 합의된 방향에 의문이 생기면 사용자와 논의합니다. 핵심 방향을 바꾸지 않는 세부 조정은 계속 진행할 수 있습니다. 관심을 끌기 위해 논쟁을 만들어 내거나 확산을 보장하지 않습니다.

## 현재 모듈: Ideo Plan — Execution Spec v1.0

- 주제 범위와 사용자 의도 파악
- 적절한 초기 조사와 출처 선택
- 다국어 검색과 소셜 자료의 활용
- 새로운 방향과 독자에게 유의미한 논의 발견
- 방향, 잠정 구성과 사용자 확인
- 조사 중 점검과 유연한 조정
- 프로젝트별 조사 규칙 또는 선택적인 Ideo Edit 연계

DSL 표기는 모델을 위한 지침이며 실행 코드나 결과 보장이 아닙니다. 이 스킬은 완전한 조사, 사실 확인 또는 집필을 대체하지 않습니다.

## 설치

사용하는 AI 도구에 맞게 선택하세요. 프로젝트에는 **Codex**와 **Claude Code**용 플러그인 설정이 있습니다.

## Codex

```text
codex plugin marketplace add and install joyce5438/Ideo-Plan-Skills
```

### 업데이트

```text
codex plugin marketplace upgrade ideo-plan
```

## Claude Code

```text
/plugin marketplace add joyce5438/Ideo-Plan-Skills
/plugin install ideo-plan@ideo-plan
```

### 업데이트

```text
/plugin marketplace update ideo-plan
```

# 사용 방법

넓은 주제 탐색, 질문 개발, 글의 방향 비교와 잠정 구성 논의에 사용할 수 있습니다. 먼저 조사하고 논의한 뒤 집필하라는 요청을 존중합니다.

```text
Ideo Plan. 이 주제를 먼저 탐색하고 가능한 방향을 함께 논의해 줘.
```

## 호출 표현

`Ideo Plan` · `Plan topic` · `Topic plan` · `題材企劃` · `規劃題材` · `討論題材` · `想題材` · `想題目` · `討論題目`
