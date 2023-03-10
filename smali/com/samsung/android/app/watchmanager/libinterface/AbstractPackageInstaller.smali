.class public abstract Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mOnstatusReturned:Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendDataToWatchManagerStub(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.watchmanager.ACTION_PACKAGE_INSTALLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mOnstatusReturned:Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;

    return-void
.end method

.method protected notifyPackageInstalled(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mOnstatusReturned:Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mOnstatusReturned:Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;->packageInstalled(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->sendDataToWatchManagerStub(Ljava/lang/String;I)V

    return-void
.end method

.method protected notifyPackageUninstalled(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mOnstatusReturned:Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;->mOnstatusReturned:Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/watchmanager/libinterface/OnstatusReturned;->packageUninstalled(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
