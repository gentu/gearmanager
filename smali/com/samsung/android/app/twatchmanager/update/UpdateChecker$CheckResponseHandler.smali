.class Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;
.super Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mChecker:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-class v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->mChecker:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

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

    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->mChecker:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;

    if-eqz v6, :cond_8

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Update check thread has been started, wait..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Update download is requested."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Sending message to SetupWizardWelcomeActivity : REQUEST_TYPE_START_DOWNLOAD"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Update check thread completed it\'s task."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Sending message to SetupWizardWelcomeActivity : REQUEST_TYPE_UPDATE_CHECK_COMPLETE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    invoke-static {v6, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    :cond_4
    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->MSG_RULE_FILE_READ_COMPLETED:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "got supported package list from MSC server. starting downland thread to check for update"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "UpdateCheckerThread is already running"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    invoke-static {v6, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    :cond_6
    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    move-result-object v4

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;-><init>(Landroid/content/Context;ILjava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->start()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Invalid request / response from update check thread."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "UpdateChecker instance is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
