.class Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

.field final synthetic val$isSucess:Z

.field final synthetic val$synType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iput p2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->val$synType:I

    iput-boolean p3, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->val$isSucess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Handler: onSyncComplete() synType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->val$synType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSucess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->val$isSucess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->val$isSucess:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncComplete() syncType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->val$synType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device Info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$400(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

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

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$400(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isValidDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isShowingCondition(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$300()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isRebootRequired(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$500(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setCurrentGearInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$600(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$500(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSyncComplete().Both local sync and MSC server sync failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$500(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    goto :goto_0
.end method
