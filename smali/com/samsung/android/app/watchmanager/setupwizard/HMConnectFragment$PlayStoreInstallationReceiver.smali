.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayStoreInstallationReceiver() ACTION_PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayStoreInstallationReceiver() pendingInstallList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$1600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$1600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$1600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3602(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Z)Z

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->moveTaskToFront()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
