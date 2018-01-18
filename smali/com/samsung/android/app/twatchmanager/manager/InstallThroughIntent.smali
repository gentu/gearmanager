.class public Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.watchmanager.fileprovider"

.field private static final TAG:Ljava/lang/String;

.field private static installInProgress:Z


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleted:I

.field private mContext:Landroid/app/Activity;

.field private mCounter:I

.field private mHandler:Landroid/os/Handler;

.field private mVersionCode:I

.field private update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->installInProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->update:Z

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mVersionCode:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCounter:I

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->list:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mContext:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setInstallationCallback(Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;)V

    :cond_0
    iput-boolean p3, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->update:Z

    return-void
.end method

.method public static isInstallationInProgress()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->installInProgress:Z

    return v0
.end method


# virtual methods
.method public makeAndThrowIntent(Lcom/samsung/android/app/twatchmanager/model/InstallPack;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    const-string v2, "Path is NULL, Something fishy!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->update:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getVersionCode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mVersionCode:I

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mContext:Landroid/app/Activity;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sput-boolean v4, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->installInProgress:Z

    return-void

    :cond_2
    sget-object v2, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    const-string v3, "Android N install via file provider"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mContext:Landroid/app/Activity;

    const-string v3, "com.samsung.android.app.watchmanager.fileprovider"

    invoke-static {v0, v3, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onInstallationResult(I)V
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->installInProgress:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->list:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-boolean v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->update:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getVersionCode(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVersionCode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mVersionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], newVersionCode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mVersionCode:I

    if-eq v3, v2, :cond_0

    move p1, v1

    :cond_0
    :goto_0
    if-ne p1, v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "packageName"

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package_index"

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    const-string v1, "Installation successful."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCounter:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already completed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Total to be installed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCounter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Start another installation, path : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->list:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->list:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->makeAndThrowIntent(Lcom/samsung/android/app/twatchmanager/model/InstallPack;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mContext:Landroid/app/Activity;

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total to be installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Installation finished, sending message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    const-string v1, "Installation cancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    const-string v1, "Something wrong, please check!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCounter:I

    if-lez v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start NS installation , path"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->list:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->list:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mCompleted:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->makeAndThrowIntent(Lcom/samsung/android/app/twatchmanager/model/InstallPack;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallThroughIntent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
