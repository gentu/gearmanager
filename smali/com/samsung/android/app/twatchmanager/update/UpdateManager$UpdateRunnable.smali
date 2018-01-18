.class Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;Lcom/samsung/android/app/twatchmanager/update/UpdateManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->TAG:Ljava/lang/String;

    const-string v1, "Time-out (around 3.6 sec)..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "time_out"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->TAG:Ljava/lang/String;

    const-string v1, "UpdateCheckResponseHandler instance is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mFirstCheckFlag:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setIsNotifiedFlag(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;->onComplete()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;->TAG:Ljava/lang/String;

    const-string v1, "UpdateManager is down."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
