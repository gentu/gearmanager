.class Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->mThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->mThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start_mMutexLockConnectionRunnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Continuing thread after connection to server established..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end_mMutexLockConnectionRunnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Abort thread on time-out."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Connection failed - Server is not responding."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Retried maximum number of Try count; Interrupting process..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;ILjava/lang/Object;)Z

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;ILjava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_TYPE_UPDATE_THREAD_COMPLETE message delivered to UI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Going to interrupt current download thread..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed on Turn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Retrying..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/16 v1, 0x9

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;ILjava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_TYPE_UPDATE_THREAD_COMPLETE message delivered to UI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Going to interrupt current download thread and restart..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;->TAG:Ljava/lang/String;

    const-string v1, "Download thread is terminated."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
