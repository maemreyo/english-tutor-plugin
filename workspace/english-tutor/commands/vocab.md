Scan and fill content for English vocabulary files with `status: pending`.

[Extended thinking: This command orchestrates the scanning of files and dispatching of agents to analyze each vocabulary word. Uses Robust Folder Discovery strategy to find the files.]

## Configuration Options

### Parameters
- `--path=<path>`: Custom path to vocabulary files directory
- `--limit=<n>`: Limit number of files to process (default: all)
- `--dry-run`: List files only, do not process

## Phase 1: Folder Discovery

1. **Find Vocabulary Directory**
   - Prompt: "Find the directory containing vocabulary files with priority:
     1. If `--path` provided → use it
     2. Look for `20_Vocabulary` in `workspace/english/` (or similar)
     3. Look for folder matching pattern `*[Vv]ocab*` in `workspace/`
     4. If not found → ask user for path"
   - Expected output: Absolute path to directory

## Phase 2: File Scanning

2. **Scan Pending Files**
   - Prompt: "In the found directory, list all `.md` files containing `status: pending` in frontmatter."
   - Tools: grep or read files
   - Expected output: List of files to process

3. **User Confirmation (optional)**
   - If `--dry-run`: Show list and exit
   - Else: Proceed to Phase 3

## Phase 3: Processing

4. **Process Each File**
   - Use Task tool with subagent_type="english-tutor:vocab-analyst"
   - Prompt for each file: "Analyze vocabulary word `{filename}` and fill content into file using the template.
     - Read skill `english-vocabulary/SKILL.md` for writing guide
     - Maintain original callout format
     - Fill `[[ word ]]` with actual words
     - Update `status: pending` → `status: done`
     - File path: {absolute_path}
     - **IMPORTANT: Write all content in English**"
   - Expected output: Fully filled file

## Phase 4: Reporting

5. **Summary**
   - Number of files processed successfully
   - List of failed files (if any)
   - Execution time

## Execution Examples

```bash
# Process all pending files
/vocab

# Process with custom path
/vocab --path=workspace/english/20_Vocabulary

# List files only
/vocab --dry-run

# Limit to 5 files
/vocab --limit=5
```

## Success Criteria

- All `status: pending` files updated to `status: done`
- Content filled completely following template
- Obsidian links `[[ word ]]` filled with real words
- Flashcards contain 5 cards in correct format

## Error Handling

- Folder not found → Ask user
- Invalid format → Skip, log error
- Analysis failure → Keep `status: pending`, log error

Vocab arguments: $ARGUMENTS
