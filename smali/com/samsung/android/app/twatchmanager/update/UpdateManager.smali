.class public Lcom/samsung/android/app/twatchmanager/update/UpdateManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

.field private static final mStubVersionList:[Ljava/lang/String;


# instance fields
.field private destroyed:Z

.field protected firstLaunchAfterUHMUpdate:Z

.field protected mContext:Landroid/content/Context;

.field protected mFirstCheckFlag:Z

.field protected mIsUpdateCheckNeeded:Z

.field protected mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

.field private mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

.field private mUpdateConf:Lcom/samsung/android/app/twatchmanager/update/UpdateConf;

.field private mWasUpdating:Z

.field private sUpdateRequestType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "161001"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mStubVersionList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;ZLcom/samsung/android/app/twatchmanager/update/UpdateConf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->sUpdateRequestType:I

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->firstLaunchAfterUHMUpdate:Z

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    sput-object p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->instance:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iput-object p4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateConf:Lcom/samsung/android/app/twatchmanager/update/UpdateConf;

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->checkUpdateNeeded()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->init()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroyed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->setBackgroundTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    return-object v0
.end method

.method private checkUHMSelfUpdate()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "checkUHMSelfUpdate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getIsUHMSelfUpdate(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "multiple_update"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "plugin_update_remain"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update::checkUHMSelfUpdate()::is_plugin_update_remain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUHMSelfUpdate(), isUHMUpdated ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->isInstalledStubPlugin()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->firstLaunchAfterUHMUpdate:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "auto_update"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PreviouslyUpdatedAt"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsSelfUpdate"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mWasUpdating:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->deleteDownloadedContent()V

    :cond_2
    return-void
.end method

.method private checkUpdateNeeded()V
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUpdateNeeded(), mForceUpdateCheck ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateConf:Lcom/samsung/android/app/twatchmanager/update/UpdateConf;

    iget-boolean v3, v3, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;->mForceUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getIsUpdating(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mWasUpdating:Z

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mWasUpdating:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateConf:Lcom/samsung/android/app/twatchmanager/update/UpdateConf;

    iget-boolean v1, v1, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;->mForceUpdate:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUpdateNeeded()-->result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getUpdateTimeDifference(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isfrequentUpdateCheckNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2710

    :goto_1
    int-to-long v4, v1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    :goto_2
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thresholdTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", difference = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->updatePreviousTime(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const v1, 0x2932e00

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "Update was already running, resume the update task."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteDownloadedContent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getPathToDownload(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private deleteTempFilesOnUpdate()V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteTempFilesOnUpdate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteTempFilesOnUpdate(), Unable to locate internal data directory of UHM."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->delete(Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "auto_update.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteTempFilesOnUpdate(), Updating UHM was successful last time."

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "auto_update"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "IsSelfUpdate"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "PreviouslyUpdatedAt"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to remove unused old UpdateSetting file at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "auto_update.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove new UpdateSetting file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mWasUpdating:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->deleteDownloadedContent()V

    goto/16 :goto_0
.end method

.method private destroyHandler()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "UpdateCheckResponseHandler instance is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/twatchmanager/update/UpdateManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->instance:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    return-object v0
.end method

.method private init()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v3, "init()"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    const-string v0, "com.samsung.android.app.watchmanager"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v5, "auto_update"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "PreviousVersionCode"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UHM] Current version code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Previous version code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-le v0, v1, :cond_0

    if-eqz v3, :cond_5

    const-string v1, "com.samsung.android.app.watchmanager"

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installer package name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.samsung.android.app.watchmanager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "UHM got updated by itself."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    if-eqz v1, :cond_1

    iput-boolean v9, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mFirstCheckFlag:Z

    const-string v1, "IsUpdateNotified"

    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PreviousVersionCode"

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->deleteTempFilesOnUpdate()V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->checkUHMSelfUpdate()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v4, "pm is null"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v4, "Package not found: com.samsung.android.app.watchmanager"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "Setting NEED_TO_UPDATE to false; Let\'s check the Update again."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IsUpdateAvailable"

    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PreviouslyUpdatedAt"

    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "UpdateRequestType"

    invoke-interface {v4, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v9, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->sUpdateRequestType:I

    iput-boolean v9, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    goto :goto_3

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method

.method private isInstalledStubPlugin()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "isInstalledStubPlugin()::mContext is null."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->queryAllDeviceRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->lastLaunch:I

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mStubVersionList:[Ljava/lang/String;

    array-length v7, v6

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v8, v6, v3

    if-eqz v5, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInstalledStubPlugin()::package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", version = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private setBackgroundTimer()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;->setTimer(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkForUpdate()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "checkForUpdate()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;Lcom/samsung/android/app/twatchmanager/update/UpdateManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    :goto_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "Going to check for updates..."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->isUpdateExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->isCriticalUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->sUpdateRequestType:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "auto_update"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "UpdateRequestType"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->sUpdateRequestType:I

    :cond_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update was checked previously and update was available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to check for updates; let\'s download the critical or, exceptional updates."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->updatePreviousTime(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->sendEmptyMessage(I)Z

    :goto_2
    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "Error in update check..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    const/4 v2, 0x2

    const-string v3, "skip_init"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;->onStartCheckingUpdate()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    new-instance v2, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;Lcom/samsung/android/app/twatchmanager/update/UpdateManager$1;)V

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->sUpdateRequestType:I

    if-nez v0, :cond_6

    const/16 v0, 0xe10

    :goto_3
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateCheckResponseHandler:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mUpdateConf:Lcom/samsung/android/app/twatchmanager/update/UpdateConf;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;->checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateChecker;->startUpdateCheckThread()Z

    move-result v0

    goto :goto_2

    :cond_6
    const/16 v0, 0x1518

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "UpdateCheckWaitingActivity is killed after internet connectivity check."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroyed:Z

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroyHandler()V

    sput-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->instance:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    return-void
.end method

.method public getUpdateRequestType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->sUpdateRequestType:I

    return v0
.end method

.method public isFirstLaunchAfterUHMUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->firstLaunchAfterUHMUpdate:Z

    return v0
.end method

.method public startUpdateChecking()V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUpdateCheckNeeded-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFirstCheck-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mFirstCheckFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mIsUpdateCheckNeeded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mFirstCheckFlag:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getIsNotifiedFlag(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isInstallFromPlaystore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSamsungServer-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isUpdateChecked-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->checkForUpdate()Z

    move-result v1

    :cond_0
    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;->onAbortUpdate()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroy()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to go for update check."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
