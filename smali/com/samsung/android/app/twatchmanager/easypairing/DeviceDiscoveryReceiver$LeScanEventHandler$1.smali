.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;
.super Landroid/bluetooth/le/ScanCallback;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBatchResults: ..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScanFailed: ..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$600(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$600(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onScanResult: ..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$700(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device/mContext is null, return"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with Address - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isShowingCondition(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScanResult - Device not supported. Returning"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getLeThresholdRssi()I

    move-result v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with RSSI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v4, v1, :cond_6

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v5, v5, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v5}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$800(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v5, v5, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v5}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$800(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding Device(BT) to HashMap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with RSSI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", threshold rssi is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mAppDeviceList is not null. after filtering of device, set mLeScannedDeviceList. "

    invoke-static {v1, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$1000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/bluetooth/BluetoothDevice;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAppDeviceList is null. without filtering of device, set mLeScannedDeviceList. "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;->this$1:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$1000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device(BT) not added to HashMap: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
