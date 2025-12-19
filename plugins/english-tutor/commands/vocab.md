Scan and fill content for English vocabulary files with `status: pending`.

[Extended thinking: This command orchestrates the scanning of files and dispatching of agents to analyze each vocabulary word.]

## Configuration Options

### Parameters
- `--path=<path>`: Custom path to vocabulary files directory
- `--limit=<n>`: Limit total number of files to process
- `--chunk=<n>`: Number of files to process per agent call (default: 15)
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
   - Prompt: "In the found directory, use this efficient command to find pending files:
     ```bash
     find <directory_path> -name "*.md" -exec grep -l "^status: pending" {} \; | head -n <limit>
     ```
     - Replace <directory_path> with actual path and <limit> with --limit value if provided
   - Expected output: List of files to process (one file per line)

3. **User Confirmation (optional)**
   - If `--dry-run`: Show list and exit
   - Else: Proceed to Phase 3

## Phase 3: Processing (Batch Mode)

4. **Process Files in Batches**
   - Logic: Group the pending files into chunks of size `--chunk` (default: 15)
   - Parallel Execution: If there are 2 or more batches, trigger all Task calls in parallel (concurrently) to maximize efficiency.
   - Use Task tool with subagent_type="english-tutor:vocab-analyst" (or "vocab-analyst" if running locally)
   - Prompt for each BATCH: "Analyze the following vocabulary files (Batch of X):
     {list_of_filenames_in_batch}

     Configuration:
     - Plugin base: {baseDir}
     - Use internal knowledge only
     - Maintain original callout format
     - Fill `[[ word ]]` with actual words
     - Populate `aliases: []` with variations, related terms, and synonyms (e.g. for `associate`, include `connection`, `link`, `partner`)
     - Alias Formatting: Use `[a, b, c]` format (no quotes for simple words). REMOVE the trailing comment after the `aliases` line.
     - STRICTLY generate 12 flashcards as defined in the template
     - Update `status: pending` → `status: done` for ALL files in this batch
     - IMPORTANT: Write all content in English**"
   - Expected output: All files in the batch updated successfully

## Phase 4: Reporting

5. **Summary**
   - Number of files processed successfully
   - Number of batches executed
   - List of failed files (if any)
   - Execution time

## Execution Examples

```bash
# Process all pending files (default chunk: 15)
/vocab

# Process with larger chunks
/vocab --chunk=7

# Process with custom path
/vocab --path=workspace/english/20_Vocabulary

# List files only
/vocab --dry-run
```

## Success Criteria

- All `status: pending` files updated to `status: done`
- Content filled completely following template
- Obsidian links `[[ word ]]` filled with real words
- Token usage optimized via batching
- Flashcards contain 12 cards in correct format

## Error Handling

- Folder not found → Ask user
- Invalid format → Skip, log error
- Analysis failure → Continue to next file in batch, report error

Vocab arguments: $ARGUMENTS
