# Hướng dẫn cài đặt OpenStack KILO trên Ubuntu Server 14.04 (Mutil Node)
### A. Mô hình cài đặt
<b>1. Mô hình</b>

<b>2. Thông số các máy ảo trên Vmware</b>

Máy chủ Controller

![Alt text](http://i.imgur.com/NPEAnKr.jpg)

Máy chủ Network

![Alt text](http://i.imgur.com/wfk5VNJ.jpg)

Máy chủ Compute

![Alt text](http://i.imgur.com/qQzMHDB.jpg)


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

<b>Bước 2: Thực hiện chạy các script trên máy chủ Controller</b>

- Danh sách các script như sau:
![Alt text](http://i.imgur.com/ntoWF7S.jpg)
- Bạn chỉnh sửa file config.cfg như mẫu dưới đây

```sh
## Assigning IP for CONTROLLER NODE: Địa chỉ này sẽ gắn cho máy chủ Controller
## dải 192 dành cho việc ra ngoài mạng. Tương tự với các phần sau:
CON_MGNT_IP=10.10.10.71
CON_EXT_IP=192.168.0.10

# Assigning IP for NETWORK NODE
NET_MGNT_IP=10.10.10.72
NET_EXT_IP=192.168.0.11
NET_DATA_VM_IP=10.10.20.72

# Assigning IP for COMPUTE1 NODE
COM1_MGNT_IP=10.10.10.73
COM1_EXT_IP=192.168.0.12
COM1_DATA_VM_IP=10.10.20.73

# Assigning IP for COMPUTE2 NODE
COM2_MGNT_IP=10.10.10.74
COM2_EXT_IP=192.168.0.13
COM2_DATA_VM_IP=10.10.20.74

#Gateway for EXT network
GATEWAY_IP=192.168.0.2
NETMASK_ADD=255.255.255.0

```
Chạy script đầu tiên, bash controller-1-ipadd.sh

![Alt text](http://i.imgur.com/dJSFgRh.jpg)

Chạy tiếp bash controller-2-prepare.sh

![Alt text](http://i.imgur.com/5TDOmEk.jpg)

kết quả thành công sẽ như sau:

![Alt text](http://i.imgur.com/NT4wB0g.jpg)

Chạy lệnh bash controller-3-create-db.sh

![Alt text](http://i.imgur.com/4u1f19u.jpg)

Chạy lệnh:  bash controller-4.keystone.sh

![Alt text](http://i.imgur.com/fCOzw2r.jpg)

Chạy lệnh: bash controller-5-creatusetenant.sh

![Alt text](http://i.imgur.com/OhnBv5l.jpg)

Chạy lệnh: bash controller-6-glance.sh

![Alt text](http://i.imgur.com/HKc5iHv.jpg)

Chạy lệnh: bash controller-7-nova.sh

![Alt text](http://i.imgur.com/sWKVdnd.jpg)

Thực hiện confirm

![Alt text](http://i.imgur.com/YxgDKAK.jpg)

Chạy lênh: bash controller-8-neutron.sh

![Alt text](http://i.imgur.com/xPemi6T.jpg)

Chạy lệnh: bash controller-9-cinder.sh

![Alt text](http://i.imgur.com/sJZyDXw.jpg)

Chạy lệnh: bash controller-horizon.sh

![Alt text](http://i.imgur.com/75sWDsN.jpg)

Thông tin login như sau:

![Alt text](http://i.imgur.com/dF7FJgc.jpg)





<b>Bước 3: Thực hiện chạy các script trên máy chủ Network</b>

<b>Bước 2: Thực hiện chạy các script trên máy chủ Compute</b>

Script install OpenStack KiLo custom by Python Viet Nam. 
