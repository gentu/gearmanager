.class final Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortUpdate()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAbortUpdate, update check process was not started."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->sIsSyncStartedForNewDevice:Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCheckingUpdate()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartCheckingUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAvailable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdateAvailable"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
