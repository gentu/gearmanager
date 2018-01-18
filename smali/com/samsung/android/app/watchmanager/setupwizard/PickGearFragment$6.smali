.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Abnormal case, must be checked additionally"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ne v0, p2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bonding failed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send intent for statistics G032"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G032"

    invoke-static {v0, v1, v3, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "510"

    const-string v1, "5105"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->insertSaLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne v0, p2, :cond_4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bonding stated. Wait"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send intent for statistics G005"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G005"

    invoke-static {v0, v1, v3, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "510"

    const-string v1, "5104"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->insertSaLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Bonded. Starting Hm Connect for connection"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1200(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;I)V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

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

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failure in Light Connection Manager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    :cond_0
    return-void
.end method

.method public onLeScanFinished(Ljava/util/Set;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

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

    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$800(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scan already finished. Repeated response."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0, v9}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$802(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Z)Z

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGearInfo(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLeScanFinished, gearInfo ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    iget-object v6, v2, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->group:Lcom/samsung/android/app/twatchmanager/model/GearGroup;

    iget-object v7, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v7}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$900(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v6}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$900(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    move-result-object v6

    if-nez v6, :cond_c

    :cond_3
    add-int/lit8 v1, v3, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v3, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1002(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-object v0, v2

    :goto_2
    move v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    if-le v3, v9, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    goto/16 :goto_0

    :cond_6
    if-ne v3, v9, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_7

    if-eqz v1, :cond_8

    iget-boolean v0, v1, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->requiresPairing:Z

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already bonded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v4, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showing already paired dialog for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/a/a;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060042

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelBtnListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, v1, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->group:Lcom/samsung/android/app/twatchmanager/model/GearGroup;

    iget-boolean v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->customPairing:Z

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1200(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1300(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->createBond(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in Light Connection manager. Starting DeviceList"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    move v1, v3

    goto/16 :goto_2
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

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

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
