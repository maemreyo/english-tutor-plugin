# Commands (Lệnh)

**Commands** trong hệ thống plugin Claude Code là các kịch bản định nghĩa quy trình làm việc (workflows). Chúng đóng vai trò điều phối (orchestrator), sử dụng các **Agents** khác nhau qua từng giai đoạn để hoàn thành một nhiệm vụ lớn.

## Định dạng File

Commands thường được định nghĩa dưới dạng Markdown trong thư mục `commands/`. Tuy nhiên, sức mạnh thực sự của chúng nằm ở việc cấu trúc các lời nhắc (prompts) để gọi các tool hoặc subagent.

*Lưu ý: Dựa trên các ví dụ tìm thấy, Commands thường được mô tả dưới dạng một "Task" lớn được chia nhỏ thành các bước, trong đó mỗi bước sử dụng công cụ `Task` để gọi một `subagent_type` cụ thể.*

### Cấu trúc cơ bản

```markdown
[Mô tả tổng quan về Command/Workflow]

## Configuration Options (Tùy chọn cấu hình)
[Các tham số đầu vào mà command chấp nhận]

## Phase 1: [Tên Giai Đoạn]

1. **[Tên Bước 1]**
   - **Use Task tool with subagent_type="[agent-name]"**
   - **Prompt**: "[Mẫu prompt gửi cho subagent]"
     - Sử dụng biến: `$ARGUMENTS` để truyền tham số.
     - Tham chiếu context từ các bước trước: "[include output from step X]".
   - **Expected output**: [Định nghĩa rõ đầu ra mong đợi]

## Phase 2: [Tên Giai Đoạn Tiếp Theo]
...

## Execution Parameters (Tham số thực thi)
- `--param-name`: Mô tả

## Success Criteria (Tiêu chí thành công)
- Checklist kiểm tra xem task đã hoàn thành chưa.
```

## Cơ chế hoạt động

### 1. Phân rã công việc (Task Decomposition)
Command chia một nhiệm vụ lớn (ví dụ: "Làm tính năng Login") thành chuỗi các nhiệm vụ nhỏ hơn theo trình tự logic (Phân tích -> Thiết kế -> Code Backend -> Code Frontend -> Test).

### 2. Ủy quyền cho Agent (Agent Delegation)
Thay vì để một AI duy nhất làm tất cả, Command chỉ định rõ "Ai làm việc gì".
*   Bước Thiết kế Backend gán cho `subagent_type="backend-architect"`.
*   Bước Code Frontend gán cho `subagent_type="frontend-developer"`.

Điều này đảm bảo mỗi phần việc được thực hiện bởi "chuyên gia" phù hợp nhất (dựa trên cấu hình Agent tương ứng).

### 3. Truyền ngữ cảnh (Context Passing)
Đầu ra của bước trước trở thành đầu vào (Context) của bước sau.
*   VD: "Architecture Diagram" từ bước Architect được đưa vào Prompt của bước Developer.

### Ví dụ: Feature Development Command

Trong ví dụ `feature-development.md`:

```markdown
## Phase 2: Implementation

4. **Backend Services Implementation**
   - Use Task tool with subagent_type="backend-architect"
   - Prompt: "Implement backend services for: $ARGUMENTS. Follow technical design: [include architecture from step 2]..."
```

Ở đây, Command hướng dẫn Claude chính (Main AI) rằng: "Đến bước này, hãy gọi Agent `backend-architect`, và bảo nó code dựa trên bản thiết kế đã có".

## Lợi ích

1.  **Quy trình chuẩn**: Đảm bảo mọi tính năng đều được phát triển theo đúng quy trình (không bỏ qua bước Design hay Security Check).
2.  **Kiểm soát chất lượng**: Bằng cách chia nhỏ và assign đúng người, chất lượng code đầu ra cao hơn so với việc một AI cố gắng làm tất cả.
3.  **Hỗ trợ làm việc nhóm**: Giả lập quy trình làm việc của một team thật sự.
