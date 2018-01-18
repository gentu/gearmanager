.class Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;
.super Landroid/os/Handler;


# instance fields
.field lastProcessedpackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mlocalInstallHandler  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;->lastProcessedpackageName:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;->lastProcessedpackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;->lastProcessedpackageName:Ljava/lang/String;

    const/16 v2, -0x65

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0x13d -> :sswitch_2
    .end sparse-switch
.end method
