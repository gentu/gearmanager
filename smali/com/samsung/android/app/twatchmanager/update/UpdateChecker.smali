.class public Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;
.super Ljava/lang/Object;


# static fields
.field static final FIRST_VERSION_CODE:I = 0x1

.field static final FIRST_VERSION_NAME:Ljava/lang/String; = "1.0.0"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

.field private mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInstalledPackageName:Ljava/lang/StringBuffer;

.field private mIsReadingRuleFile:Z

.field private mUpdateCheckerThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

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

.field private mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mIsReadingRuleFile:Z

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mIsReadingRuleFile:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mIsReadingRuleFile:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->makeCheckURL()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->makeHandlerInstance()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->emptyUpdateList()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateCheckerThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateCheckerThread:Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->nullAndVoidHandler()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;)Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    return-object v0
.end method

.method private emptyUpdateList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "emptyUpdateList()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private getSupportedPackageList()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "getSupportedPackageList()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getSupportPackageSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageInstalled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mVersionCode:I

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VersionCode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mVersionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    :goto_3
    if-nez v1, :cond_4

    const-string v0, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mVersionCode:I

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    const-string v1, "1.0.0"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return v2

    :cond_0
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v4, "pm is null"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_5
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageInfo is null for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not installed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    :cond_5
    move-object v0, v3

    goto/16 :goto_2
.end method

.method private makeCheckURL()Z
    .locals 8

    const/16 v7, 0x3a

    const/4 v1, 0x1

    const/16 v6, 0x40

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeCheckURL starts, type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_PLUS_MODULE:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->getSupportedPackageList()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeCheckURL()-> supportedPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mVersionCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAllAdditionalPackages()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needs to add additional packages ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-boolean v3, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->onlyForNonSamsung:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mVersionCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "additional package is not satisfied ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_ONLY:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    if-ne v2, v3, :cond_7

    :cond_5
    :goto_2
    const-string v0, "com.samsung.android.app.watchmanager"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    const-string v2, "com.samsung.android.app.watchmanager"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_6
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeCheckURL, mInstalledPackageName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method private makeHandlerInstance()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeHandlerInstance, mCheckResponseHandler ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private makePackageUpdateString()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "makePackageUpdateString()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mInstalledPackageName:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mIsReadingRuleFile:Z

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "Starting Sync..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$SyncCompleteCallBack;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$SyncCompleteCallBack;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->syncGearInfo(ILcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method private nullAndVoidHandler()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "nullAndVoidHandler()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateChecker$CheckResponseHandler;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "Requested operation can\'t be carried out on null handler."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public startUpdateCheckThread()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "startUpdateCheckThread()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isInstallFromPlaystore(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->makePackageUpdateString()V

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->mIsReadingRuleFile:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v1, "reading Rule File from MSC server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->makeHandlerInstance()V

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v2, "No package added for update checking."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->TAG:Ljava/lang/String;

    const-string v2, "UHM update check was skipped for play store devices."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
