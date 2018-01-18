.class Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;
.super Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;",
            ">;"
        }
    .end annotation
.end field

.field private prevProgress:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->prevProgress:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/16 v9, 0x8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

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

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "UpdateDownloadThread is running, wait..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection established; State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->prevProgress:I

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "Starting Download; initialize download progress."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Update is downloading, wait..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, -0x1

    if-ne v1, v0, :cond_5

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->prevProgress:I

    if-ge v1, v2, :cond_6

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-lez v2, :cond_8

    :cond_6
    iput v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->prevProgress:I

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading, set progress to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-double v2, v2

    div-double v4, v2, v10

    const-wide/16 v2, 0x0

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_7

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-double v2, v2

    div-double/2addr v2, v10

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalSizeInMB "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", downloadedSizeInMB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->prevProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Older progress notification, skipping..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Download stopped...Unable to write to target file."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v8}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setIsDownloadFinish(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGearID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGear()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isConnected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "No Device connected. Start installation"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I

    move-result v0

    if-gtz v0, :cond_d

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "installation failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update downloaded inside directory-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "installation started"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1400(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060050

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1500(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->isUHMIncluded()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "not necessary to disconnect because UHM only update case"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->continueInstallationAfterBackup()V

    goto :goto_1

    :cond_f
    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " then start installation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->registerReceiver(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "software for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " will not ne updated, hence not necessary to disconnect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->continueInstallationAfterBackup()V

    goto/16 :goto_1

    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Failed to download update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->makeTempOrRestoreInternalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setDownloadPath(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Empty download folder for UHM update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Failed to install update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_26

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_25

    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_25

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installationReturnCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v4}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setIsDownloadFinish(Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1702(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    :cond_14
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1800(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->getStorageErrorCode(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "installation failed due to insufficient storage. Showing the MSG to user"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v8, v4, v8}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004c

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_15
    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->removePackageFromUpdatePackageList(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    goto/16 :goto_0

    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v1, :cond_17

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1900(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_19

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Activity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2000(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I

    move-result v2

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2100(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I

    move-result v4

    if-ge v2, v4, :cond_1a

    const-string v2, "completed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2000(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2100(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2008(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "Success in update; killing UHM..."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2202(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1702(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    :cond_1b
    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$2300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    goto/16 :goto_0

    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v9, :cond_1f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    const-string v0, "wait_installing"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateDownloadThread completed its task; State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Update process completed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1702(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    :cond_1e
    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    goto/16 :goto_0

    :cond_1f
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "UpdateDownloadThread could not complete it\'s task on time; Restart download thread."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$702(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    :cond_20
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_21

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->makeTempOrRestoreInternalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setDownloadPath(Landroid/content/Context;Ljava/lang/String;)V

    :cond_21
    :goto_4
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1000(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    goto/16 :goto_0

    :cond_22
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "Empty download folder for UHM update."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_23
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_24

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] downloaded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1800(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    goto/16 :goto_0

    :cond_24
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "Disconnect and backup completed. stating installation"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->mUpdateNoticeFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->unregisterReceiver(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->continueInstallationAfterBackup()V

    goto/16 :goto_0

    :cond_25
    move v1, v4

    goto/16 :goto_3

    :cond_26
    move-object v2, v3

    goto/16 :goto_2
.end method
