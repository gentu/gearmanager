.class public Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sConnectionTry:I


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentPackageCount:I

.field private mDownloadPath:Ljava/lang/String;

.field private mGearManagerDeviceHolder:Landroid/view/View;

.field private mInstallSuccess:Z

.field private mIsCriticalUpdateNotDownloaded:Z

.field private mIsForceUpdate:Z

.field private mIsRequestCanceled:Z

.field private mIsResourceNotFound:Z

.field private mIsResourcesAcquired:Z

.field private mIsUHMUpdatedFirst:Z

.field private mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

.field private mOverallPackageCount:I

.field private mPackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageString:Ljava/lang/String;

.field private mPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousUpdatePath:Ljava/lang/String;

.field private mUpdateDescription:Landroid/widget/TextView;

.field private mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

.field private mUpdateFragmentListener:Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;

.field private mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

.field private mUpdateList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateProgressBar:Landroid/widget/ProgressBar;

.field private mUpdateType:Ljava/lang/String;

.field private mWasUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mOverallPackageCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCurrentPackageCount:I

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDescription:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateProgressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCancelButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->prepareDownload()V

    return-void
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->installApp()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->applicableForUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;)Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->updatePendingList()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->removePackageFromPendingList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCurrentPackageCount:I

    return v0
.end method

.method static synthetic access$2008(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCurrentPackageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCurrentPackageCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mOverallPackageCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mInstallSuccess:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->clearUpdatePackageList()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPreviousUpdatePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsCriticalUpdateNotDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mWasUpdating:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/util/CommonDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    return-object v0
.end method

.method private applicableForUpdate(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applicableForUpdate, deviceName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getContainerPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicableForUpdate ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private clearResources(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearResources("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourcesAcquired:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "Interrupting UpdateDownloadThread..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setIsUpdating(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private clearUpdatePackageList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "clearUpdatePackageList()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->updatePendingList(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method private getUpdatePackageList()Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v4, "getUpdatePackageList()"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageSet:Ljava/util/Set;

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mWasUpdating:Z

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v6, "auto_update"

    invoke-virtual {v4, v6, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v4, "PreviouslySavedAt"

    invoke-interface {v6, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v7, ".old"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_0
    if-eqz v4, :cond_0

    const-string v7, ".old"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->makeTempOrRestoreInternalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPreviousUpdatePath:Ljava/lang/String;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "PreviouslySavedAt"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_b

    const-string v0, "PendingPackageList"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getUpdateList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    move v4, v3

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update available for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPreviousUpdatePath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPendingList ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getUpdateList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageSet:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v3, "Pending List is null. Updating it with Update Package list"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->updatePendingList()V

    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v1, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_8

    :goto_5
    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mOverallPackageCount:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCurrentPackageCount:I

    :cond_6
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverallPackageCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mOverallPackageCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpdateList.size() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePackageSet = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    iput-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageSet:Ljava/util/Set;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5

    :cond_9
    move-object v0, v2

    goto :goto_6

    :cond_a
    move-object v3, v0

    move v4, v1

    goto/16 :goto_2

    :cond_b
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public static increaseCount()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "increaseCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    return-void
.end method

.method private installApp()I
    .locals 15

    const/16 v14, 0x1fd

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v3, "installApp()"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is null, so do not need to proceed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;-><init>(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v14}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v8, v3, v6}, Lcom/samsung/android/app/twatchmanager/model/InstallPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v1, v0

    :cond_2
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->setFileList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->setHandler(Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateInstaller;->startUpdateInstallation()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_5
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v5, v3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v5, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_b

    array-length v9, v8

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloaded package count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    move v0, v1

    move v3, v2

    :goto_6
    if-ge v4, v9, :cond_8

    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    iget-object v11, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v11, v10}, Lcom/samsung/android/app/twatchmanager/model/InstallPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v14}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    if-eqz v0, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->changeFilePermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    move v1, v2

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto :goto_8

    :cond_b
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v3, "Nothing to install / update."

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_4

    :cond_c
    move v3, v2

    goto/16 :goto_5

    :cond_d
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " doesn\'t exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "Download path is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isMultipleUpdate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "multiple_update"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    const-string v2, "com.samsung.android.app.watchmanager"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update::isMultipleUpdate()::mUpdateList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "plugin_update_remain"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.watchmanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.app.watchmanager"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update::isMultipleUpdate()::mUpdateList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "plugin_update_remain"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private prepareDownload()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "prepareDownload()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDescription:Landroid/widget/TextView;

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->isMultipleUpdate()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update::prepareDownload()mUpdateList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update::prepareDownload()mPackageString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageString:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;-><init>(Landroid/content/Context;ILjava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDownloadThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sendIntentToModuleBeforeDownload(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourceNotFound:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    goto :goto_0
.end method

.method private removePackageFromPendingList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mOverallPackageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mOverallPackageCount:I

    return-void
.end method

.method private sendIntentToModuleBeforeDownload(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntentToModuleBeforeDownload starts ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->isUHMIncluded()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.watchmanager.ACTION_HM_UPDATE_DOWNLOAD_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "sendIntentToModuleBeforeDownload ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "sendIntentToModuleBeforeDownload, will not send intent"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePendingList()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePendingList(), mPendingList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->updatePendingList(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method protected continueInstallationAfterBackup()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "continueInstallationAfterBackup"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDescription:Landroid/widget/TextView;

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCancelButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->installApp()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "installation failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "installation Started"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "auto_update"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsCriticalUpdateNotDownloaded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mInstallSuccess:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourceNotFound:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "IsUpdateNotified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mInstallSuccess:Z

    if-eqz v1, :cond_7

    const-string v1, "PreviouslyUpdatedAt"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    const-string v1, "IsUpdateInProgress"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourceNotFound:Z

    if-eqz v1, :cond_2

    const-string v1, "PackageList"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsCriticalUpdateNotDownloaded:Z

    if-eqz v1, :cond_8

    const-string v1, "IsUpdateAvailable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "UpdateType"

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsRequestCanceled:Z

    if-nez v1, :cond_3

    const-string v1, "PackageList"

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourcesAcquired:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->clearResources(Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsCriticalUpdateNotDownloaded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mInstallSuccess:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateFragmentListener:Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;->onUpdateFragmentFinished()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    if-eqz v1, :cond_1

    const-string v1, "PreviouslyUpdatedAt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_8
    const-string v1, "IsUpdateAvailable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "Need To Finish all Activity"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateFragmentListener:Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;->onUpdateFragmentFinished()V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "mActivity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected isUHMIncluded()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUHMIncluded ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateFragmentListener:Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement IUpdateFragmentListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onBackPressed()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "BackUp downloaded apk"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->makeTempOrRestoreInternalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPreviousUpdatePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setDownloadPath(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsCriticalUpdateNotDownloaded:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "Empty download folder for UHM update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const v5, 0x7f060054

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "auto_update"

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "IsUpdateNotified"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v2, "UpdateNoticeFragment was launched from history stack."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IsUpdateInProgress"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mWasUpdating:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v2, "UpdateNoticeFragment was resumed with previous state."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNotificationManager;->getInstance()Lcom/samsung/android/app/twatchmanager/update/UpdateNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNotificationManager;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "multiple_update"

    invoke-virtual {v0, v2, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "plugin_update_remain"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsUHMUpdatedFirst:Z

    const-string v0, "UpdateType"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->isCriticalUpdate(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    const v0, 0x7f030011

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPendingList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->setStatusBarOpenByNotification(Landroid/app/Activity;)V

    const v0, 0x7f0b006a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getUpdatePackageList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mPackageString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    const v3, 0x7f0b0022

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    const v3, 0x7f0b0024

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    const v3, 0x7f0b001f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mGearManagerDeviceHolder:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getPathToDownload(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mDownloadPath:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourcesAcquired:Z

    sput v7, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsUHMUpdatedFirst:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UnknownGear"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3, v8, v7, v8}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    const v3, 0x7f060016

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTextToOkBtn(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateList:Ljava/util/HashMap;

    const-string v3, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060055

    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f060005

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    const v3, 0x7f060053

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    new-instance v3, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    new-instance v3, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$3;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    new-instance v3, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelBtnListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsUpdateNotified"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    if-nez v1, :cond_2

    const-string v1, "PreviouslyUpdatedAt"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "UnknownGear"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v2, "UpdateNoticeFragment can not be resumed with previous state."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v2, "UpdateNoticeFragment was launched first time."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v8, v7, v4}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    const v3, 0x7f060015

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTextToCancelBtn(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "auto_update"

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "IsNormalUpdateCancel"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->prepareDownload()V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsResourcesAcquired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsForceUpdate:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mIsCriticalUpdateNotDownloaded:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->clearResources(Z)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy -> disabling CMStateReceiver broadcast receiver"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->unregisterReceiver(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mUpdateFragmentListener:Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
