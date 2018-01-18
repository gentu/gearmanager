.class Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iput-boolean p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->val$isSuccess:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;->onSyncCompleteCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->TAG:Ljava/lang/String;

    const-string v1, "Activity finished/Destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->TAG:Ljava/lang/String;

    const-string v1, "onSyncComplete().Both local sync and MSC server sync failed. MSC server or Inet is down."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, " MSC sync failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/Toaster;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
