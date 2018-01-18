.class public Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;


# static fields
.field public static final INSTALL_FINISH_STATE:Ljava/lang/String; = "completed"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChecker:Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

.field private mContext:Landroid/app/Activity;

.field private mCurrentInstallingPackageIndex:I

.field private mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

.field private mInstallReturncode:I

.field private mOldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private mSourceFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateUIHandler:Landroid/os/Handler;

.field private final mlocalInstallHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller$1;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mlocalInstallHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mSourceFileList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mUpdateUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->get(Landroid/content/Context;)Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mChecker:Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageIndex:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentUHMVersion()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "com.samsung.android.app.watchmanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.samsung.android.hostmanager.app"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getFailedResponseBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleUpdateFailResponse()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "handleUpdateFailResponse()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string v1, "watchmanager.apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mOldValues:Ljava/util/Map;

    const-string v1, "auto_update"

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->copySharedPref(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    const/16 v0, 0xb

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mInstallReturncode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v2, v2, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->getFailedResponseBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->sendMessage(ILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->sendMessage(ILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private sendMessage(ILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mUpdateUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mUpdateUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 5

    const/16 v4, 0xc

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInstalled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mInstallReturncode:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->INSTALL_SUCCEEDED: returnCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete downloaded file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->sendMessage(ILjava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageIndex:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageIndex:I

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mSourceFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->startUpdateInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Aborting installation..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->sendMessage(ILjava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Source is not available."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Installation of all packages has been completed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "completed"

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->sendMessage(ILjava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->INSTALL_FAILED: returnCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->handleUpdateFailResponse()V

    goto :goto_1
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "packageUninstalled(), This is not used for package update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mSourceFileList:Ljava/util/List;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 2

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mUpdateUIHandler:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startUpdateInstallation()Z
    .locals 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "startUpdateInstallation()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mSourceFileList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mSourceFileList:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mCurrentInstallingPackageSource:Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Installation source is invalid."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_1
    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invoking install request for package("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mChecker:Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->get(Landroid/content/Context;)Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mChecker:Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mChecker:Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mChecker:Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->matchSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v8, "signature is not matching. skipping installation..."

    invoke-static {v5, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    :goto_2
    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    const-string v8, "auto_update"

    invoke-virtual {v5, v8, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "com.samsung.android.app.watchmanager"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.samsung.android.hostmanager.app"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mOldValues:Ljava/util/Map;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v5, "PreviousVersionCode"

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->getCurrentUHMVersion()I

    move-result v9

    invoke-interface {v8, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "IsSelfUpdate"

    invoke-interface {v8, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v5, v2

    :goto_3
    const-string v9, "InstallingPackage"

    new-instance v10, Ljava/util/HashSet;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v2

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->hasInstallPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v8, "We do have permissions for Silent installation"

    invoke-static {v1, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->getInstaller(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_3

    const-string v4, "com.sec.android.app.samsungapps"

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-interface {v1, v7, v4, v0}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move v6, v2

    :cond_4
    :goto_4
    if-nez v6, :cond_5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-->INSTALL_REQUEST_FAILED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->handleUpdateFailResponse()V

    :cond_5
    move v6, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v4, "We able to install via Intent only"

    invoke-static {v1, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->mlocalInstallHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->setHandler(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->start()V

    move v6, v2

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->TAG:Ljava/lang/String;

    const-string v1, "Installation source list or, context is invalid."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v5, v6

    goto/16 :goto_3

    :cond_9
    move v5, v2

    goto/16 :goto_2

    :cond_a
    move v1, v2

    move-object v3, v4

    goto/16 :goto_1
.end method
