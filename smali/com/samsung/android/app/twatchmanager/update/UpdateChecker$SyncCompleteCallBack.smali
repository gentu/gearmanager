.class Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$SyncCompleteCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;


# instance fields
.field private mChecker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncCompleteCallBack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$SyncCompleteCallBack;->mChecker:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$SyncCompleteCallBack;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V

    return-void
.end method


# virtual methods
.method public onSyncComplete(IZ)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSyncComplete ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$SyncCompleteCallBack;->mChecker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1100(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSyncComplete mIsReadingRuleFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1100(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Z

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1100(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1102(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Z)Z

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "abnormal case, let\'s make handler instance"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1300(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending MSG_RULE_FILE_READ_COMPLETED msg to checker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rule file read successful."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->MSG_RULE_FILE_READ_COMPLETED:I

    iput v0, v2, Landroid/os/Message;->what:I

    :goto_1
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Rule file Corrupted. Stop checking for Update."

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    iput v1, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$702(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method
