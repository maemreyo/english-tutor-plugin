---
name: english-vocabulary
description: English vocabulary analysis skill. Used when filling content for vocabulary files in Obsidian vault following the standard template.
---

# English Vocabulary Analysis Skill

Guide to analyzing and presenting English vocabulary in Obsidian format.

## ⛔ CRITICAL: Tool Restrictions

> [!CAUTION] Token Optimization
> - **ABSOLUTELY NO WEB SEARCH** - Use internal knowledge only
> - Read template from: `{baseDir}/references/template.md`
> - DO NOT search for files - paths are provided explicitly

## When to Use This Skill

- Analyzing a new vocabulary word
- Filling content into vocabulary template
- Creating flashcards for Spaced Repetition

## Template Location

**Path:** `{baseDir}/references/template.md`

When generating content:
1. Read the template file from the path above
2. Replace `{{WORD}}` with the actual word
3. Fill in all `...` placeholders
4. Update `status: pending` → `status: done`

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
> - Generate exactly **7 Cards** as per the standard.
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

### Card 1: Meaning & Context (Multi-line)

What does **{{WORD}}** (*/<ipa>/*) mean?
?
> 📖 **Meaning:** <English Definition>
> 🇻🇳 **Vietnamese:** <Vietnamese Definition>
> 🗣️ **IPA:** */<ipa>/*
> 💡 **Nuance:** <Explanation of usage/connotation>

---

### Card 2: Production (Reverse)

**Definition:** "<English Definition>"
**Vietnamese:** <Vietnamese Definition>
→ **Target Word?**
?
**{{WORD}}** (*/<ipa>/*)

---

### Card 3: Usage (Multi-line)

Use **{{WORD}}** in a sentence.
?
> 📝 **Sentence:** <English Sentence>
> 🇻🇳 **Translation:** <Vietnamese Sentence>

---

### Card 4: Collocations (Multi-line)

List 3 common collocations for **{{WORD}}**.
?
> 🔗 **Collocations:**
> 1. <Collocation 1>
> 2. <Collocation 2>
> 3. <Collocation 3>

---

### Card 5: Root & Word Family (Multi-line)

Analyze the root/family of **{{WORD}}**.
?
> 🌱 **Root:** <Language> `<root_word>` (<meaning>)
> 👨‍👩‍👧 **Family:** 
> - *(<pos>)* <related_word>
> - *(<pos>)* <related_word>

---

### Card 6: Context Cloze

> 🗣️ *<Sentence with ==word== hidden>*
>
> 🇻🇳 **Vi:** <Vietnamese Translation>

---

### Card 7: IPA Decoding

> 🔊 */<ipa>/*
?
**{{WORD}}** 

---

## 📈 Learning Progress

**Mastery Criteria:**
- [ ] Can define the word
- [ ] Can pronounce correctly
- [ ] Can use in a sentence
- [ ] Known collocations

## Output Requirements

> [!IMPORTANT] Strict Standard Adherence
> You MUST strictly follow the flashcard format defined in the template above.
> - Generate exactly **7 Cards** as per the standard.
> - Use the exact icons and formatting (bold headers, empty lines) as specified.
> - Fill `[[ word ]]` with actual words
> - Update `status: pending` → `status: done`
