.class Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBondStateChanged, device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], bond state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Abnormal case, must be checked additionally"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ne v0, p2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bonding failed. send intent for statistics G032"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G032"

    invoke-static {v0, v1, v3, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "510"

    const-string v1, "5105"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->insertSaLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne v0, p2, :cond_4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bonding stated. Wait. send intent for statistics G005"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G005"

    invoke-static {v0, v1, v3, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "510"

    const-string v1, "5104"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->insertSaLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Bonded. Starting Hm Connect for connection"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;I)V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failure in Light Connection Manager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V

    :cond_0
    return-void
.end method

.method public onLeScanFinished(Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScanFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanFinished(Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
