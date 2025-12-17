---
name: english-grammar
description: English grammar analysis skill. Used when filling content for structure files in Obsidian vault following the standard template.
---

# English Grammar Analysis Skill

Guide to analyzing and presenting English grammar structures in Obsidian format.

## ⛔ CRITICAL: Tool Restrictions

> [!CAUTION] Token Optimization
> - **ABSOLUTELY NO WEB SEARCH** - Use internal knowledge only
> - Read template from: `{baseDir}/references/template.md`
> - DO NOT search for files - paths are provided explicitly

## When to Use This Skill

- Analyzing a new grammar structure
- Filling content into structure template
- Creating flashcards for Spaced Repetition

## Template Location

**Path:** `{baseDir}/references/template.md`

When generating content:
1. Read the template file from the path above
2. Replace `{{STRUCTURE_NAME}}` with the actual structure name
3. Fill in all `...` placeholders
4. Update `status: pending` → `status: done`

## Structure Types Reference

| Type | Description | Example |
|------|-------------|---------|
| **Pattern** | Fixed sentence pattern | `The more... the more...` |
| **Idiom** | Idiomatic expression | `Break the ice` |
| **Phrasal Verb** | Verb + particle | `Look forward to` |
| **Collocation** | Common word combination | `Make a decision` |

## Writing Formulas/Patterns

Use these symbols:
- `[Subject]`, `[Verb]`, `[V-ing]`, `[V-ed]`, `[Noun]`, `[Adj]`
- `+` - Connector

**Example:** `[Subject] + would rather + [V-inf] + than + [V-inf]`

## CEFR Level Guidelines

| Level | Characteristics | Example |
|-------|-----------------|---------|
| A1 | Beginner | `There is/are` |
| A2 | Elementary | `Going to + V` |
| B1 | Intermediate | `Used to + V` |
| B2 | Upper Intermediate | `Had better + V` |
| C1 | Advanced | `Were it not for...` |
| C2 | Proficiency | `Scarcely... when...` |

## Output Format

Keep the entire markdown structure of the template, replacing:
- `{{STRUCTURE_NAME}}` → actual structure name
- `...` → actual content
- `[[ ]]` → `[[ actual_word ]]`
- `status: pending` → `status: done`
