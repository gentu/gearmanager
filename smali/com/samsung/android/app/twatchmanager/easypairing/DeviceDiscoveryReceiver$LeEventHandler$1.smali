.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$700(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLeScan: device/mContext is null, return"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLeScan: Device Found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with Address - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isShowingCondition(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLeScan: Device not supported. Returning"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->checkIfGearResetMode([B)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLeScan: gear device is not in reset mode, return"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getLeThresholdRssi()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLeScan: Device found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with RSSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p2, v1, :cond_7

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$800(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$800(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLeScan: Adding Device(BT) to HashMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with RSSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threshold rssi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mAppDeviceList is not null. after filtering of device, set mLeScannedDeviceList. "

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$1000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAppDeviceList is null. without filtering of device, set mLeScannedDeviceList. "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$1000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLeScan: Device(BT) not added to HashMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threshold rssi is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
