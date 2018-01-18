.class public Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;
.super Ljava/lang/Object;


# static fields
.field public static final EF_SERVER_SYNC:I = 0x2

.field public static final LOCAL_SYNC:I = 0x1

.field private static final PREF_RESOURCE_INFO:Ljava/lang/String; = "pref_resource_info"

.field private static final RULES_DIRECTORY:Ljava/lang/String; = "rules"

.field private static final RULES_FILE_NAME:Ljava/lang/String; = "resources.xml"

.field private static final RULES_XML_VERSION:Ljava/lang/String; = "rules_xml_version"

.field private static final SERVER_SYNC_TIME_LIMIT:I = 0x1388

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;


# instance fields
.field private isSync:Z

.field private mContext:Landroid/content/Context;

.field private mISyncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

.field mImageMapArray:[Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParser:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

.field private syncHandler:Landroid/os/Handler;

.field private syncHandlerThread:Landroid/os/HandlerThread;

.field private syncReqCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mInstance:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mParser:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isSync:Z

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;)Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mISyncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->onSyncComplete(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncFromLocal()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncFromEFServer()V

    return-void
.end method

.method private getInputStreamFromAsset()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "resources.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;
    .locals 2

    const-class v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mInstance:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mInstance:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mInstance:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLocalRulesFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rules"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resources.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getXMLVersion(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mContext:Landroid/content/Context;

    const-string v1, "pref_resource_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rules_xml_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "rules_xml_version"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v1, "getXMLVersion() set default version from asset"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getRulesParser()Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;->getRulesXMLVersion(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "0.0"

    :cond_2
    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXMLVersion() current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private isUpdateNeeded(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v3, "isUpdateNeeded() starts"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getXMLVersion(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUpdateNeeded() newVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v3

    if-ne v4, v9, :cond_1

    array-length v4, v2

    if-ne v4, v9, :cond_1

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v6, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUpdateNeeded() check Major version, newVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " appVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v4, :cond_3

    if-le v4, v5, :cond_2

    :cond_0
    :goto_0
    move v1, v0

    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUpdateNeeded() returns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-gt v3, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private declared-synchronized onSyncComplete(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncComplete() starts, isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mISyncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mISyncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;->onSyncComplete(IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mISyncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HandlerThreadUtils;->close(Landroid/os/HandlerThread;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processRulesFile()Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v2, "processRulesFile() starts"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->values()[Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getRulesParser()Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;->getAllResourceInfo()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v2, "processRulesFile() there is no infoList, return false"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;

    iget-object v0, v2, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->images:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v2, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->images:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->toValue()I

    move-result v0

    aget-object v0, v5, v0

    iget-object v5, v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private savePreferences(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePreferences() xmlVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mContext:Landroid/content/Context;

    const-string v1, "pref_resource_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rules_xml_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private syncFromEFServer()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v1, "syncFromEFServer() is not used"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private syncFromLocal()V
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v1, "syncFromLocal() start the local sync"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getLocalRulesFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->ruleIsDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v3, "syncFromLocal() resource rule file doesn\'t exist in the download folder"

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->updateRulesFromAsset()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getRulesParser()Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;->getRulesXMLVersion(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->savePreferences(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isResourceInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->processRulesFile()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->onSyncComplete(IZ)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInputStreamFromAsset()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getRulesParser()Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;->getRulesXMLVersion(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isUpdateNeeded(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v3, "syncFromLocal() downloaded resources.xml is older version than asset version"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->updateRulesFromAsset()V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->savePreferences(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateRulesFromAsset()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInputStreamFromAsset()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getLocalRulesFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    const v0, 0x8000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_3
    return-void

    :cond_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_7
    throw v0

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_7
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v1, " Input stream null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1
.end method

.method private updateRulesFromServer(Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getLocalRulesFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->copyFiles(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public getGearGroupInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/GroupInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getRulesParser()Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;->getAllResourceInfo()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoByGroupName(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getGearGroupInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->getGroupImageInfo(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;)Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getImageInfoFromName(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->toValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    :cond_0
    return-object v0
.end method

.method public getImageListByType(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->toValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method getRulesParser()Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mParser:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mParser:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mParser:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    return-object v0
.end method

.method public isResourceInfoAvailable()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isSync:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->mImageMapArray:[Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isResourceInfoAvailable() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public ruleIsDownloaded()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getLocalRulesFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized syncGearInfo(ILcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncGearInfo ()  syncType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v1, "syncGearInfo () init syncHandlerThread"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RESOURCE_SYNC_THREAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandler:Landroid/os/Handler;

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncGearInfo () post ... syncRequestCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncReqCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;-><init>(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->TAG:Ljava/lang/String;

    const-string v1, "syncGearInfo() set a timeout handler for EF Server sync"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$2;-><init>(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
