.class Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field volatile isInstallFinish:Z

.field keepApk:Z

.field mContext:Landroid/content/Context;

.field private mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

.field packName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->this$0:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->isInstallFinish:Z

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->path:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->packName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->keepApk:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    const-string v0, "tUHM:PackageControlReceiver"

    const-string v1, "PackageController.installPackage Start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->packName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->installPackage(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->isInstallFinish:Z

    if-nez v0, :cond_1

    const-string v0, "tUHM:PackageControlReceiver"

    const-string v1, "wait"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "tUHM:PackageControlReceiver"

    const-string v1, "interrupted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->keepApk:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "tUHM:PackageControlReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "tUHM:PackageControlReceiver"

    const-string v1, "Install finish"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_6
    const-string v1, "tUHM:PackageControlReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "tUHM:PackageControlReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keep apk :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->isInstallFinish:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->this$0:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;->getInternalPathToPMTempDir()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->this$0:Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;->deleteInternalFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mContext:Landroid/content/Context;

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->path:Ljava/lang/String;

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->getInstaller(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall$1;-><init>(Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver$BackgroundInstall;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2
.end method
