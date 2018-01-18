.class Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;->this$1:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const-string v0, "tUHM:PackageControlReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tUHM:PackageControlReceiver"

    const-string v1, "Re-Install Success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;->this$1:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;

    iput-boolean v3, v0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->isInstallFinish:Z

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;->this$1:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;->this$1:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v0, "tUHM:PackageControlReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tUHM:PackageControlReceiver"

    const-string v1, "Unistall Success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
