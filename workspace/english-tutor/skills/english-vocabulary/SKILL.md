---
name: english-vocabulary
description: English vocabulary analysis skill. Used when filling content for vocabulary files in Obsidian vault following the standard template.
---

# English Vocabulary Analysis Skill

Guide to analyzing and presenting English vocabulary in Obsidian format.

## When to Use This Skill

- Analyzing a new vocabulary word
- Filling content into `tpl_Vocabulary.md`
- Creating flashcards for Spaced Repetition
- Building word families

## Parts of Speech

| Type | Abbreviation | Example |
|------|--------------|---------|
| **Noun** | n. | knowledge |
| **Verb** | v. | learn |
| **Adjective** | adj. | intelligent |
| **Adverb** | adv. | quickly |
| **Preposition** | prep. | through |
| **Conjunction** | conj. | although |

## CEFR Level Guidelines

| Level | Characteristics | Example |
|-------|-----------------|---------|
| A1 | Beginner | book, water |
| A2 | Elementary | understand, important |
| B1 | Intermediate | opportunity, consider |
| B2 | Upper Intermediate | emphasize, comprehensive |
| C1 | Advanced | eloquent, meticulous |
| C2 | Proficiency | ostentatious, ephemeral |

## IPA Notation

- Use standard IPA symbols
- British pronunciation preferred: `/ˈnɒlɪdʒ/`
- Include stress markers: `ˈ` (primary), `ˌ` (secondary)

## Template Sections Guide

### 1. Word Analysis (`[!info]`)
- **IPA**: Phonetic transcription
- **Part of Speech**: noun/verb/adj/adv
- **CEFR Level**: A1-C2
- **Register**: formal/informal/academic
- **Etymology**: Word origin and roots

### 2. Meanings (`[!abstract]`)
- **Root Meaning**: Core dictionary definition
- **Context Meaning**: Usage-specific meaning
- **Vietnamese Translation**: Direct + Contextual
- **Nuances**: Connotations, subtle meanings

### 3. Relations (`[!note]`)
Obsidian link format: `[[ word ]] /IPA/ : brief_meaning`

```markdown
> **Word Family:**
> - **Noun:** [[ knowledge ]] /ˈnɒlɪdʒ/
> - **Verb:** [[ know ]] /nəʊ/
> - **Adj:** [[ knowledgeable ]] /ˈnɒlɪdʒəbl/
```

### 4. Context & Usage (`[!success]`)
- **Collocations**: 2-3 common word combinations
- **Examples**: 2 sentences with different contexts

Format:
```markdown
> **Collocations:**
> 1. gain knowledge
> 2. common knowledge
> 
> **1. Academic Context**
> - **Sentence:** His extensive knowledge of history impressed the panel.
> - **Translation:** ...
```

### 5. Common Mistakes (`[!failure]`)
Format:
```markdown
> **1. Pronunciation Error**
> - ❌ **Mistake:** /ˈnɒledʒ/ (pronouncing the 'w')
> - ✅ **Correction:** /ˈnɒlɪdʒ/
> - **Why:** The 'k' and 'w' are silent
```

### 6. Flashcards
5 cards with multi-line format:
```markdown
### Card 1: Meaning & Context (Multi-line)
What does **knowledge** mean?
?
**Meaning:** Facts, information learned through experience or education
**IPA:** /ˈnɒlɪdʒ/
**Key Nuance:** Refers to understanding, not just memorization
```

## Complete Example

Refer to sample file: `assets/example-filled-vocabulary.md`

---

## Embedded Template

When generating content, use this template. Replace `{{WORD}}` with the actual word and fill in all placeholders.

```markdown
---
tags:
  - vocabulary
  - flashcard
category: word
mastery: 🔴 New
status: pending
---

# {{WORD}}

> [!info] Word Analysis
> **IPA:** /  /
> **Part of Speech:** (noun/verb/adj/adv)
> **CEFR Level:** (A1-C2)
> **Register:** (formal/informal/academic)
> **Etymology:** ...

> [!abstract] Meanings
> **Root Meaning:** ...
> 
> **Context Meaning:** ...
> 
> **Vietnamese Translation:**
> - **Direct:** ...
> - **Contextual:** ...
> 
> **Nuances:**
> - ...

> [!note] Relations
> **Word Family:**
> - **Noun:** [[ ]] /.../
> - **Verb:** [[ ]] /.../
> - **Adj:** [[ ]] /.../
> - **Adv:** [[ ]] /.../
> 
> **Synonyms:**
> - [[ ]] /.../ : ...
> - [[ ]] /.../ : ...
> 
> **Antonyms:**
> - [[ ]] /.../ : ...
> - [[ ]] /.../ : ...

> [!success] Context & Usage
> **Collocations:**
> 1. ...
> 2. ...
> 
> **1. Example Context 1**
> - **Sentence:** ...
> - **Translation:** ...
> 
> **2. Example Context 2**
> - **Sentence:** ...
> - **Translation:** ...

> [!failure] Common Mistakes
> **1. Mistake Type**
> - ❌ **Mistake:** ...
> - ✅ **Correction:** ...
> - **Why:** ...

> [!tip] Learning Notes
> - **Memory Hook:** ...
> - **Visual Association:** ...
> - **Story/Situation:** ...

> [!quote]- Context Source
> **Quote:** ...
> **Source:** [[ ]]

---

## 🧠 Spaced Repetition Flashcards

### Card 1: Meaning & Context (Multi-line)
What does **{{WORD}}** mean?
?
**Meaning:** 
**IPA:** /  /
**Key Nuance:** 

### Card 2: Production (Reverse)
Question:: Context/Definition: "..." → Word?
Answer:: **{{WORD}}**

### Card 3: Usage (Multi-line)
Use **{{WORD}}** in a sentence.
?
**Sentence:** 
**Translation:** 

### Card 4: Collocations (Multi-line)
List 3 common collocations for **{{WORD}}**.
?
1. 
2. 
3. 

### Card 5: Root & Word Family (Multi-line)
Analyze the root/family of **{{WORD}}**.
?
**Root:** 
**Related types:** (noun/verb/adj) 

---

## 📈 Learning Progress

**Mastery Criteria:**
- [ ] Can define the word
- [ ] Can pronounce correctly
- [ ] Can use in a sentence
- [ ] Known collocations
```
