# Agents (Đại lý)

**Agents** là các thực thể AI chuyên biệt trong hệ thống Plugin của Claude Code. Chúng được thiết kế để đảm nhận các vai trò cụ thể trong quy trình phát triển phần mềm, với kiến thức sâu và hành vi được tinh chỉnh cho vai trò đó.

## Định dạng File

Mỗi Agent được định nghĩa trong một file Markdown (`.md`) nằm trong thư mục `agents/`. File này bắt đầu bằng YAML frontmatter để khai báo metadata.

### Cấu trúc cơ bản

```markdown
---
name: [tên-agent-viết-thường-gạch-nối]
description: [Mô tả ngắn gọn về vai trò và khi nào nên sử dụng Agent này]
model: inherit  # Thường dùng 'inherit' để dùng model mặc định của Claude
---

[Prompt hệ thống mô tả persona của Agent]

## Purpose (Mục đích)
[Mô tả chi tiết mục đích và vai trò]

## Core Philosophy (Triết lý cốt lõi)
[Các nguyên tắc chỉ đạo hành vi của Agent]

## Capabilities (Khả năng)
[Danh sách các kỹ năng và kiến thức cụ thể]
### [Category 1]
- **Kỹ năng A**: Mô tả
- ...

## Behavioral Traits (Đặc điểm hành vi)
[Cách Agent suy nghĩ và tương tác]

## Workflow Position (Vị trí trong quy trình)
- **Hợp tác với**: [Các agent khác]
- **Sau bước**: [Bước nào]

## Response Approach (Cách tiếp cận phản hồi)
[Quy trình từng bước Agent dùng để giải quyết vấn đề]

## Output Examples (Ví dụ đầu ra)
[Mô tả những gì user có thể mong đợi từ Agent này]
```

## Giải thích chi tiết các phần

### 1. Frontmatter
*   `name`: Định danh duy nhất cho agent (ví dụ: `backend-architect`, `security-auditor`).
*   `description`: Giúp Claude (và người dùng) biết khi nào nên gọi Agent này.
*   `model`: `inherit` là lựa chọn an toàn để sử dụng model hiện tại, nhưng có thể chỉ định model cụ thể nếu cần.

### 2. Persona & Purpose
Phần này định hình "nhân cách" của AI. Ví dụ: "Bạn là một kiến trúc sư hệ thống backend chuyên về khả năng mở rộng...". Điều này giúp AI đóng vai (role-play) chính xác hơn.

### 3. Capabilities
Đây là nơi bạn liệt kê kiến thức chuyên môn ("Kiến thức miền" - Domain Knowledge). Việc liệt kê chi tiết các công nghệ (REST, GraphQL, gRPC...), pattern (Circuit Breaker, Saga...), và công cụ giúp Agent truy xuất kiến thức liên quan chính xác hơn.

### 4. Behavioral Traits & Core Philosophy
Quy định "thái độ" làm việc. Ví dụ: "Ưu tiên sự đơn giản hơn tối ưu hóa quá sớm" hoặc "Luôn đặt bảo mật lên hàng đầu".

### 5. Response Approach
Hướng dẫn Agent cách tư duy (Chain of Thought). Định nghĩa các bước Agent nên làm theo thứ tự để giải quyết vấn đề.
Ví dụ: 1. Hiểu yêu cầu -> 2. Phân tích rủi ro -> 3. Đề xuất giải pháp.

## Ví dụ: Backend Architect Agent

Dưới đây là trích đoạn cấu hình của một `backend-architect`:

```markdown
---
name: backend-architect
description: Expert backend architect specializing in scalable API design and microservices.
model: inherit
---

You are a backend system architect...

## Core Philosophy
Design backend systems with clear boundaries...

## Capabilities
### API Design
- **RESTful APIs**: Resource modeling...
- **GraphQL APIs**: Schema design...
```

## Cách sử dụng

Agents có thể được gọi theo hai cách:
1.  **Trực tiếp**: `claudecode use agent backend-architect` (Giả lập).
2.  **Thông qua Commands**: Được điều phối bởi một Command orchestrator (Xem thêm tại [COMMANDS.md](./COMMANDS.md)).
