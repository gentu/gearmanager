.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;
.super Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mHmfragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->TAG:Ljava/lang/String;

    const-string v1, "BackupStatusListener()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->mHmfragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x33

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->TAG:Ljava/lang/String;

    const-string v1, "Hm has completed its backup. dismiss the wait popup"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->mHmfragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;->TAG:Ljava/lang/String;

    const-string v2, "dismissing wait popup"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->unregisterReceiver(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3900(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    :cond_0
    return-void
.end method
