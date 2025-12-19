---
name: english-vocabulary
description: English vocabulary analysis skill. Used when filling content for vocabulary files in Obsidian vault following the standard template.
allowed-tools: Read, Write, Edit
---

# English Vocabulary Analysis Skill

Guide to analyzing and presenting English vocabulary in Obsidian format.

## ⛔ CRITICAL: Tool Restrictions

> [!CAUTION] Token Optimization
> - Use internal knowledge only
> - Read template from: `{pluginBase}/assets/tpl_Vocabulary.md`
> - DO NOT search for files - paths are provided explicitly

## When to Use This Skill

- Analyzing a new vocabulary word
- Filling content into vocabulary template
- Creating flashcards for Spaced Repetition

## Template Location

**Path:** `{pluginBase}/assets/tpl_Vocabulary.md`

When generating content:
1. Read the template file from the path above
2. The template includes a hierarchical tag structure at the top (e.g., `#flashcards/vocabulary/general`)
3. Replace `{{WORD}}` with the actual word
4. Fill in all `...` placeholders
5. Populate `aliases: []` with variations: Plurals, Tenses, POS, Possessives, Irregulars (e.g., `went`, `mice`)
6. Update `status: pending` → `status: done`
7. The template uses `tags: [vocabulary]` and `status: pending` in frontmatter

## Parts of Speech Reference

| Type | Abbreviation | Example |
|------|--------------|---------|
| **Noun** | n. | knowledge |
| **Verb** | v. | learn |
| **Adjective** | adj. | intelligent |
| **Adverb** | adv. | quickly |

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

## Output Format

> [!IMPORTANT] Strict Standard Adherence
> You MUST strictly follow the flashcard format defined in `assets/Vocabulary_Flashcard_Standards.md` (which is reflected in the template).
> - Generate exactly **12 Cards** as per the standard.
> - Use the exact icons and formatting (bold headers, empty lines) as specified.
> - **MANDATORY:** You MUST include the `?` separator line between the Question and Answer part of each card.

## Template

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

### Card 1: Meaning & Mental Model (Multi-line)

What does **{{WORD}}** (*/<ipa>/*) mean?
?
> 📖 **Meaning:** <English Definition (Oxford/Cambridge style)>
> 🇻🇳 **Vietnamese:** <Vietnamese Definition>
> 🗣️ **IPA:** */<ipa>/*
> 🧠 **Mental Model:** <Short Vietnamese explanation using English keywords to explain the concept/image>

---

### Card 2: Production (Reverse)

**Definition:** "<English Definition>"
**Vietnamese:** <Vietnamese Definition>
→ **Target Word?**
?
**{{WORD}}** (*/<ipa>/*)

---

### Card 3: Usage & Analysis (Multi-line)

Use **{{WORD}}** in a sentence.
?
> 📝 **Sentence:** <High-quality English Sentence>
> 🇻🇳 **Translation:** <Vietnamese Translation>
> 🔍 **Analysis:** <Why is this word perfect here? (VN/EN mix)>

---

### Card 4: Collocations by Logic (Multi-line)

List 3 common collocations for **{{WORD}}**.
?
> 🔗 **Collocations:**
> 1. **<Group 1 e.g., Intensity>:** <Collocation> (<VN note why>)
> 2. **<Group 2 e.g., Action>:** <Collocation> (<VN note why>)
> 3. **<Group 3>:** <Collocation>

---

### Card 5: Word Upgrade (The "Writer's Rewrite")

🚀 **Upgrade:** Make this boring sentence specific using **{{WORD}}**:
"<Basic Sentence>"
?
> 🖋️ **Advanced:** "<Advanced Sentence>"
> 💡 **Why it works:** <Explain in VN why the advanced word hits harder (e.g., nuances, imagery)>

---

### Card 6: Nuance Barrier (Comparison)

🆚 **Nuance:** Why use **{{WORD}}** instead of **[[Synonym]]**?
?
> **{{WORD}}:** <Usage context (VN explanation)>
> **[[Synonym]]:** <Usage context (VN explanation)>
> 🧱 **The Barrier:** <The key difference/wall between them (VN/EN mix)>

---

### Card 7: Scenario Reaction

🎭 **Scenario:** <Specific Context>. You feel <Emotion>. Say it!
?
> 🎬 **Line:** "<The Sentence>"
> 👨‍🎨 **Director's Note:** <Why this fits the vibe (VN)>

---

### Card 8: Etymology Story

🌱 **Origins:** Link the root `<root>` to the meaning of **{{WORD}}**.
?
> 📜 **Story:** <Short narrative connecting ancient root to modern meaning (VN/EN mix)>

---

### Card 9: Word Family & Roots

Analyze the root/family of **{{WORD}}**.
?
> 🌱 **Root:** <Language> `<root_word>` (<meaning>)
> 👨‍👩‍👧 **Family:**
> - *(<pos>)* <related_word>
> - *(<pos>)* <related_word>

---

### Card 10: IPA Decoding (with Context)

> 🔊 */<ipa>/*
?
**{{WORD}}**
> 📖 **Meaning:** <English Definition>
> 🇻🇳 **Vietnamese:** <Vietnamese Definition>

---

### Card 11: Mistake Hunter (Error Correction)

🕵️ **Fix the Error:** Common mistake with **{{WORD}}**?
?
> ❌ **Mistake:** <Common Error>
> ✅ **Correction:** <Correct Usage>
> 🧠 **Why:** <Explanation of rule/logic>

---

### Card 12: Antonym Flip

↔️ **Flip:** What is the opposite of **{{WORD}}**?
?
> **Antonyms:**
> - [[<Antonym 1>]] (<Nuance/Context>)
> - [[<Antonym 2>]]
> 🧱 **Contrast:** <Brief note on the difference> 

---

## Output Requirements

> [!IMPORTANT] Strict Standard Adherence
> You MUST strictly follow the flashcard format defined in the template above.
> - Generate exactly **12 Cards** as per the standard.
> - Use the exact icons and formatting (bold headers, empty lines) as specified.
> - Fill `[[ word ]]` with actual words
> - Update `status: pending` → `status: done`
