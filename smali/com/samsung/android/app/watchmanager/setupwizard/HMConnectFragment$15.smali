.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

.field final synthetic val$isSucess:Z

.field final synthetic val$synType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    iput p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->val$synType:I

    iput-boolean p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->val$isSucess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Handler: onSyncComplete() synType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->val$synType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSucess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->val$isSucess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity detached.Igonre callback "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->val$isSucess:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncComplete() syncType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->val$synType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device Info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAllGearInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getCurrentBTAdderess()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isValidDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isShowingCondition(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isRebootRequired(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    const/16 v1, 0x2ce

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;I)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setCurrentGearInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    const/16 v1, 0x2cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSyncComplete().Both local sync and MSC server sync failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, " MSC sync failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/Toaster;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
