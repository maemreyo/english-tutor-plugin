# Skills (Kỹ năng)

**Skills** là các kho kiến thức dạng module mà Agents có thể tham khảo. Khác với Agents (là "người" thực hiện), Skills giống như "sách giáo khoa" hoặc "tài liệu hướng dẫn" mà Agent đọc để thực hiện công việc tốt hơn.

## Cấu trúc thư mục

Mỗi Skill là một thư mục riêng biệt bên trong `skills/`.

```
skills/
└── [tên-skill]/
    ├── SKILL.md           # File định nghĩa chính (BẮT BUỘC)
    ├── assets/            # Các file mẫu, template code
    │   ├── template.py
    │   └── checklist.md
    └── references/        # Tài liệu tham khảo sâu hơn
        └── deep-dive.md
```

## Định dạng File SKILL.md

File `SKILL.md` là điểm nhập (entry point) của một Skill.

### Cấu trúc cơ bản

```markdown
---
name: [tên-skill]
description: [Mô tả ngắn gọn về kỹ năng và khi nào nên áp dụng]
---

# [Tên Kỹ Năng]

[Giới thiệu tổng quan]

## When to Use This Skill (Khi nào sử dụng)
[Danh sách các tình huống]

## Core Concepts (Khái niệm cốt lõi)
[Các lý thuyết nền tảng]

## Patterns (Các mẫu thiết kế)
[Các pattern cụ thể kèm ví dụ code]
### Pattern 1: [Tên]
```python
# Code example
```

## Best Practices (Thực tiễn tốt nhất)
- Do this...
- Don't do that...

## Common Pitfalls (Các lỗi thường gặp)
- ...

## Resources (Tài nguyên)
[Liên kết đến các file trong thư mục assets hoặc references]
```

## Các thành phần chính của SKILL.md

### 1. Frontmatter
*   `name`: Tên kỹ năng (ví dụ: `api-design-principles`).
*   `description`: Meta-data quan trọng để Agent (hoặc hệ thống RAG) biết khi nào nên truy xuất skill này.

### 2. Core Concepts & Patterns
Đây là phần giá trị nhất. Nó cung cấp context (ngữ cảnh) cho AI.
*   **Concepts**: Định nghĩa thuật ngữ để AI và người dùng hiểu cùng một nghĩa.
*   **Patterns**: Cung cấp các đoạn code mẫu (Few-shot prompting). Khi Agent đọc được các mẫu code này, nó sẽ có xu hướng sinh ra code theo phong cách và cấu trúc tương tự.

**Mẹo**: Hãy đưa vào các mẫu code "Good" vs "Bad" để AI học cách tránh các lỗi sai.

### 3. Resources
Skill có thể liên kết đến các file khác trong cùng thư mục skill. Điều này giúp giữ `SKILL.md` gọn gàng nhưng vẫn cung cấp đủ chi tiết (ví dụ: `assets/rest-api-template.py`).

## Tại sao cần Skills?

1.  **Tái sử dụng**: Nhiều Agent khác nhau có thể cần cùng một kiến thức (ví dụ: Cả `backend-architect` và `frontend-developer` đều cần hiểu về `api-design-principles`).
2.  **Chuẩn hóa**: Đảm bảo tất cả code được sinh ra tuân theo chuẩn của tổ chức (ví dụ: Luôn dùng Pydantic cho validation, luôn handle error theo format JSON cụ thể).
3.  **Dễ bảo trì**: Khi chuẩn code thay đổi, bạn chỉ cần cập nhật file Skill thay vì sửa prompt của từng Agent.

## Ví dụ: API Design Principles

Skill này dạy cho Agent cách thiết kế API chuẩn:

```markdown
---
name: api-design-principles
description: Master REST and GraphQL API design principles...
---

## Patterns
### Pattern 2: Pagination

```python
# Ví dụ về cách phân trang chuẩn mà chúng ta muốn AI sử dụng
class PaginatedResponse(BaseModel):
    items: List[dict]
    total: int
    page: int
    # ...
```
```
