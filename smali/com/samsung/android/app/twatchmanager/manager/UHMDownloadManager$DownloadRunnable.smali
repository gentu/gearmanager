.class Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field packageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->packageInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DownloadRunnable()"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$302(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;Z)Z

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->packageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->packageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {v5}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-boolean v6, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->checkForUpdate:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packages already installed. No need to download"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    const/16 v1, 0x2ca

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$500(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;I)V

    :goto_1
    return-void

    :cond_4
    iput-object v3, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->packageInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name for Downloading:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network is available. Starting download!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->packageInfoList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$700(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x2c7

    invoke-virtual {v0, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->packageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-boolean v0, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->isOptional:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    iput v2, v3, Landroid/os/Message;->arg1:I

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadRunnable;->this$0:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->access$800(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;Landroid/os/Message;)V

    goto :goto_1

    :cond_7
    iput v1, v3, Landroid/os/Message;->arg1:I

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method
