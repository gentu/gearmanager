.class Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortUpdate()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAbortUpdate, update check process was not started."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;->setPostponeTimer(Landroid/content/Context;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCheckingUpdate()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartCheckingUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAvailable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdateAvailable"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;->access$100(Lcom/samsung/android/app/twatchmanager/update/UpdateCheckingReceiver;)V

    return-void
.end method
