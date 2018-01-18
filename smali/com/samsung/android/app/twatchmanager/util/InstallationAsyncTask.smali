.class public Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile currentInstallPack:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

.field private volatile curretApkSize:I

.field private volatile isInstallFinished:Z

.field private volatile isUnInstallFinished:Z

.field private mApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandlerWeakRef:Ljava/lang/ref/WeakReference;

.field private mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

.field private parentPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->parentPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Creating AsyncTask"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->getInstaller(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask$1;-><init>(Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground()  sorted mApplicationList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v4, v5

    move v1, v5

    :goto_0
    if-ge v4, v6, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isInstallFinished:Z

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    const/16 v7, 0x1fd

    invoke-static {v2, v7}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    new-instance v2, Ljava/io/File;

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v2, v8

    const/high16 v7, 0x100000

    div-int/2addr v2, v7

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->curretApkSize:I

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->currentInstallPack:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->reinstall:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v2, :cond_2

    if-nez v1, :cond_8

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    sub-int v1, v6, v4

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v4

    :goto_1
    if-ge v2, v6, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground() bnrPackageList:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->requestBackup(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move v2, v3

    :goto_2
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isUnInstallFinished:Z

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reinstall :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/receiver/PackageControlReceiver;->addBlockedPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-interface {v1, v7}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->uninstallPackage(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isUnInstallFinished:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v7, "waiting for uninstall response from PM"

    invoke-static {v1, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v1, v2

    :cond_2
    :try_start_8
    const-string v2, "com.samsung.accessory"

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.accessory"

    invoke-static {v2, v7}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->conditionForSAPReboot()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.samsung.accessory"

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getVersionCode(Ljava/lang/String;)I

    move-result v2

    const/16 v7, 0x141

    if-ne v2, v7, :cond_3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->saveRebootRequiredForGearFit2(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->installerPackage:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-interface {v2, v7, v8, v9}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_6
    :try_start_9
    iget-boolean v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isInstallFinished:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isCancelled()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v7, "waiting for install response from PM"

    invoke-static {v2, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v2

    :try_start_b
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :catch_3
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_4

    :cond_4
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground() isCancelled():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isCancelled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mApplicationList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v7, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v8, "Publishing progress"

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->publishProgress([Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->keepApk:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->cleardumpStorage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v2, "Clear dump storage"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move v0, v1

    goto/16 :goto_5

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keep Apk :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_9
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_a
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto/16 :goto_4

    :cond_8
    move v2, v1

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "exit()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Installation is done for all packages"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;)V

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mPackageController:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "onProgressUpdate: "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package_index"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "packageName"

    aget-object v4, p1, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation is done package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "mHandlerWeakRef is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation successful for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isInstallFinished:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->parentPackage:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setParentPackageForReinstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setAppNameForReinstallToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->currentInstallPack:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->apkName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setPackageApkNameForReinstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, " Notify all "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation FAILED for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x13d

    new-instance v2, Lcom/samsung/android/app/twatchmanager/model/InstallationError;

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->curretApkSize:I

    invoke-direct {v2, p1, p2, v3}, Lcom/samsung/android/app/twatchmanager/model/InstallationError;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isInstallFinished:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " packageUninstalled() packagename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->isUnInstallFinished:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;->mHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
