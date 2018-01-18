.class final Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time out 2 min. "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->access$100()V

    return-void
.end method
