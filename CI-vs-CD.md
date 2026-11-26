# SO SÁNH CONTINUOUS INTEGRATION (CI) VÀ CONTINUOUS DELIVERY (CD)

| Tiêu chí | CI (Bài 7) | CD (Bài 8) |
|---|---|---|
| Mục đích | Kiểm tra code có lỗi không | Đưa code đến tay người dùng |
| Output | File .jar / artifact | Container đang chạy |
| Công cụ | Maven, SonarQube, Nexus | Docker, Docker Hub, K8s |
| Câu hỏi trả lời | An toàn để merge? | Sẵn sàng production? |
| Tần suất | Mỗi commit | Mỗi lần CI pass |
| Thất bại nghĩa là | Code có bug | Deployment bị lỗi |

## Kết luận

CI giúp tự động hóa quá trình kiểm tra và tích hợp mã nguồn.
CD giúp tự động hóa quá trình đóng gói và triển khai ứng dụng.
Kết hợp CI và CD giúp tạo thành quy trình phát triển và phát hành phần mềm liên tục.
