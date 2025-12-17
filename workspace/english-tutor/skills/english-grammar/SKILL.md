---
name: english-grammar
description: English grammar analysis skill. Used when filling content for structure files in Obsidian vault following the standard template.
---

# English Grammar Analysis Skill

Guide to analyzing and presenting English grammar structures in Obsidian format.

## When to Use This Skill

- Analyzing a new grammar structure
- Filling content into `tpl_Structure.md`
- Creating flashcards for Spaced Repetition
- Comparing similar structures

## Structure Types

| Type | Description | Example |
|------|-------------|---------|
| **Pattern** | Fixed sentence pattern | `The more... the more...` |
| **Idiom** | Idiomatic expression | `Break the ice` |
| **Phrasal Verb** | Verb + particle | `Look forward to` |
| **Collocation** | Common word combination | `Make a decision` |

## Writing Formulas/Patterns

Use these symbols:
- `[Subject]`
- `[Verb]` - Infinitive
- `[V-ing]` - Gerund/Present Participle
- `[V-ed]` - Past Participle
- `[Noun]`
- `[Adj]`
- `+` - Connector

**Example:**
```text
[Subject] + would rather + [V-inf] + than + [V-inf]
```

## CEFR Level Guidelines

| Level | Characteristics | Example |
|-------|-----------------|---------|
| A1 | Beginner | `There is/are` |
| A2 | Elementary | `Going to + V` |
| B1 | Intermediate | `Used to + V` |
| B2 | Upper Intermediate | `Had better + V` |
| C1 | Advanced | `Were it not for...` |
| C2 | Proficiency | `Scarcely... when...` |

## Template Sections Guide

### 1. Structural Analysis (`[!info]`)
- **Structure Type**: Select one: Question / Statement / Idiom / Pattern
- **Formula**: Write formula using standard notation
- **Components**: List and explain components
- **Formation Rules**: Grammar rules

### 2. Meaning & Usage (`[!abstract]`)
- **Literal**: Word-for-word meaning
- **Figurative**: Metaphorical meaning
- **Purpose**: Function (emphasize, suggest, compare...)

### 3. Relations (`[!note]`)
Obsidian link format: `[[ word ]] /IPA/ : brief_meaning`

```markdown
> **Synonyms / Similar Structures:**
> - [[ Would rather ]] /wʊd ˈræðər/ : prefer...
> - [[ Prefer to ]] /prɪˈfɜːr tuː/ : prefer...
```

### 4. Usage Examples (`[!success]`)
3 required contexts:
1. **Formal**
2. **Informal**
3. **Business/Academic**

Each example includes:
- Sentence
- Analysis

### 5. Common Mistakes (`[!failure]`)
- Pattern Error: Structural mistakes
- Usage Error: Contextual mistakes

Format:
```markdown
> **1. Pattern Error**
> - ❌ **Mistake:** I would rather to go home.
> - ✅ **Correction:** I would rather go home.
> - **Why:** "Would rather" + V-inf (no "to")
```

### 6. Flashcards
7 cards with format:
```markdown
### Card 1: Pattern Recognition
**Question::** What is the structure pattern for **used to + V**?
**Answer::** [Subject] + used to + [V-inf] → describes past habit
```

## Complete Example

Refer to sample file: `assets/example-filled-structure.md`

---

## Embedded Template

When generating content, use this template. Replace `{{STRUCTURE_NAME}}` with the actual structure name and fill in all `...` placeholders.

```markdown
---
tags:
  - structure
  - flashcard
  - grammar
mastery: 🔴 New
type: structure
status: pending
---

> [!info] Structural Analysis
> **Structure Type:** (Question / Statement / Idiom / Pattern)
> 
> **Formula / Pattern:**
> [Subject] + [Verb] + ...
> 
> **Components:**
> - **Component 1:** ...
> - **Component 2:** ...
>
> **Formation Rules:**
> 1. Rule 1...
> 2. Rule 2...

> [!abstract] Meaning & Usage
> **Core Meaning:**
> - **Literal:** ...
> - **Figurative:** ...
> 
> **Functional Meaning:**
> - **Purpose:** (e.g., to emphasize, to suggest)
> - **Nuance:** (formal vs informal, intensity)
> 
> **Vietnamese Translation:**
> - **Direct:** ...
> - **Contextual:** ...

> [!note] Relations & Connections
> **Synonyms / Similar Structures:**
> - [[ word ]] /IPA/ : meaning
> 
> **Antonyms / Contrasting Structures:**
> - [[ word ]] /IPA/ : meaning

> [!success] Usage Examples
> 
> **1. Formal Context**
> - **Sentence:** ...
> - **Translation:** ...
> - **Analysis:** ...
> 
> **2. Informal Context**
> - **Sentence:** ...
> - **Translation:** ...
> - **Analysis:** ...
> 
> **3. Business/Academic Context**
> - **Sentence:** ...
> - **Translation:** ...
> - **Analysis:** ...

> [!failure] Common Mistakes
> 
> **1. Pattern Error**
> - ❌ **Mistake:** ...
> - ✅ **Correction:** ...
> - **Why:** ...
> 
> **2. Usage Error**
> - ❌ **Mistake:** ...
> - ✅ **Correction:** ...
> - **Why:** ...

> [!tip] Learning Strategies
> - **Visual Association:** ...
> - **Memory Hook:** ...
> - **Common Collocations:** ...
> - **Related Structures:** [[ ]] vs [[ ]]

> [!quote]- Meta Information
> | Property | Value |
> | :--- | :--- |
> | **Complexity** | (basic/intermediate/advanced) |
> | **CEFR Level** | (A1/A2/B1/B2/C1/C2) |
> | **Frequency** | (common/uncommon/rare) |
> | **Register** | (formal/informal/academic/business) |
> | **Grammar Focus** | ... |

---

## 🧩 Context Analysis (Advanced)

> [!example] Original Source
> **Quote:** ...
> **Context:** ...
> **Effectiveness:** ...

---

## 🧠 Spaced Repetition Flashcards

### Card 1: Pattern Recognition
**Question::** What is the structure pattern for **{{STRUCTURE_NAME}}**?
**Answer::**

### Card 2: Meaning
**Question::** What does **{{STRUCTURE_NAME}}** express?
**Answer::**

### Card 3: Usage
**Question::** When should you use **{{STRUCTURE_NAME}}**?
**Answer::**

### Card 4: Example
**Question::** Create a sentence with **{{STRUCTURE_NAME}}** about [topic]
**Answer::**

### Card 5: Error Correction
**Question::** What's wrong with: [incorrect example]
**Answer::**

### Card 6: Comparison
**Question::** How is **{{STRUCTURE_NAME}}** different from [similar structure]?
**Answer::**

### Card 7: Transformation
**Question::** Transform this sentence using **{{STRUCTURE_NAME}}**: [sentence]
**Answer::**

---

## 📈 Learning Progress

**Mastery Criteria:**
- [ ] Can identify the structure in texts
- [ ] Can use it correctly in writing
- [ ] Can explain its function
- [ ] Can avoid common errors

**Personal Notes:**
- ...
```
