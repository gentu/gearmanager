.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHandler: Received intent"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHandler: Intent is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHandler: Intent action is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventHandler: intent msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$100(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$200(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$300(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v2, "com.samsung.android.app.twatchmanager.easypairing.ACTION_LE_DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->access$500(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V

    goto :goto_0
.end method
