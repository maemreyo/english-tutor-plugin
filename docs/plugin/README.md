# Tài liệu Hệ thống Plugin Claude Code

Chào mừng bạn đến với tài liệu về **Hệ thống Plugin Claude Code**. Plugin trong Claude Code là cách mở rộng khả năng của trợ lý AI thông qua việc xác định các Agent chuyên biệt, Kỹ năng (Skills) sử dụng lại được và các Lệnh (Commands) quy trình làm việc phức tạp.

Hệ thống này cho phép bạn biến Claude thành một đội ngũ kỹ sư phần mềm chuyên nghiệp với các vai trò và kiến thức cụ thể.

## Các thành phần chính

Hệ thống Plugin được cấu thành từ 3 phần chính, hoạt động bổ trợ cho nhau:

### 1. Agents (Đại lý)
Agents là các trợ lý chuyên môn hóa. Mỗi Agent đóng vai trò như một chuyên gia trong một lĩnh vực cụ thể (ví dụ: Kiến trúc sư Backend, Chuyên gia Frontend, Kỹ sư Bảo mật). Agents được cấu hình với tính cách, triết lý và kiến thức sâu rộng về lĩnh vực của họ.

*   [Xem chi tiết về Agents](./AGENTS.md)

### 2. Skills (Kỹ năng)
Skills là các gói kiến thức và hướng dẫn mà Agents có thể sử dụng. Một Skill không phải là một nhân cách, mà là một tập hợp các nguyên tắc, mẫu thiết kế (patterns), và thực tiễn tốt nhất mà bất kỳ Agent nào cũng có thể "học" và áp dụng khi cần thiết.

*   [Xem chi tiết về Skills](./SKILLS.md)

### 3. Commands (Lệnh)
Commands là các quy trình công việc (workflows) được xác định trước. Chúng đóng vai trò "nhạc trưởng", điều phối các Agents khác nhau để hoàn thành một nhiệm vụ phức tạp, nhiều bước (ví dụ: Phát triển một tính năng từ A-Z, từ phân tích nghiệp vụ đến triển khai).

*   [Xem chi tiết về Commands](./COMMANDS.md)

## Cấu trúc thư mục

Một plugin điển hình thường có cấu trúc như sau:

```
plugin-name/
├── agents/             # Định nghĩa các Agents
│   ├── backend-architect.md
│   └── frontend-expert.md
├── skills/             # Định nghĩa các Skills
│   ├── api-design/
│   │   ├── SKILL.md
│   │   └── assets/
│   └── react-patterns/
│       └── SKILL.md
└── commands/           # Định nghĩa các Commands
    └── feature-dev.md
```

Hãy tham khảo các tài liệu chi tiết của từng thành phần để bắt đầu xây dựng plugin của riêng bạn.
