# Hướng dẫn cài đặt OpenStack KILO trên Ubuntu Server 14.04
### A. Mô hình cài đặt
### B. Các bước cài đặt
<b>Bước 1: Bạn thực hiện lấy toàn bộ script về máy chủ</b>

Chú ý: Thao tác này bạn có thể làm trên tất cả các máy hoặc có thể làm trên một máy rồi copy sang các máy chủ khác.

```sh
# cập nhật các gói
apt-get update
# Thực hiện cài đặt Git
apt-get install git -y
#Lấy toàn bộ script về máy chủ	
git clone https://github.com/pythonvietnam/openstack.git

```
Sau khi lấy về bạn sẽ thấy có 3 thư mục như sau:

![Alt text](http://i.imgur.com/3SV240A.jpg)




Script install OpenStack KiLo custom by Python Viet Nam. 
