.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StopScanTask"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getIsBleScan()Z

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->stopLeScan()Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->sendActionLeDiscoveryFinishedIntent()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setIsBleScan(Z)V

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StopScanTask: failure while stop scan"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->stopBluetoothScan()Z

    move-result v0

    goto :goto_0
.end method
