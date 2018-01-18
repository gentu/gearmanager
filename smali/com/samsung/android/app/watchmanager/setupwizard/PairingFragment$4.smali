.class Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.device.extra.PAIRING_KEY"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$500(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;Z)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;->abortBroadcast()V

    :cond_1
    return-void
.end method
