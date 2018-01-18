.class public Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;
.super Ljava/lang/Thread;


# static fields
.field static final APK_NAME_UHM:Ljava/lang/String; = "watchmanager.apk"

.field public static final DOWNLOAD_PATH:Ljava/lang/String; = "Download"

.field public static final DOWNLOAD_STATE:Ljava/lang/String; = "wait_downloading"

.field public static final GEAR_FOLDER:Ljava/lang/String; = "Gear"

.field public static final INSTALL_STATE:Ljava/lang/String; = "wait_installing"

.field public static final MATCHING_BUT_NO_UPDATE:Ljava/lang/String; = "No_Update"

.field public static final MATCHING_UPDATEABLE_CRITICAL:Ljava/lang/String; = "Critical"

.field public static final MATCHING_UPDATEABLE_EXCEPTION:Ljava/lang/String; = "Exception"

.field public static final MATCHING_UPDATEABLE_NORMAL:Ljava/lang/String; = "Normal"

.field private static final MAX_RETRY:I = 0x3

.field public static MSG_RULE_FILE_READ_COMPLETED:I = 0x0

.field private static final NEED_TO_SUBSTRING:Ljava/lang/String; = "SAMSUNG-"

.field public static final NO_MATCHING_APPLICATION:Ljava/lang/String; = "No_Matching_App"

.field public static final REQUEST_TYPE_START_DOWNLOAD:I = 0x4

.field public static final REQUEST_TYPE_UPDATE_CHECK:I = 0x1

.field public static final REQUEST_TYPE_UPDATE_CHECK_COMPLETE:I = 0x2

.field public static final REQUEST_TYPE_UPDATE_DOWNLOAD:I = 0x3

.field public static final REQUEST_TYPE_UPDATE_DOWNLOADED:I = 0x7

.field public static final REQUEST_TYPE_UPDATE_DOWNLOADING:I = 0x5

.field public static final REQUEST_TYPE_UPDATE_DOWNLOAD_HALT:I = 0x6

.field public static final REQUEST_TYPE_UPDATE_THREAD_COMPLETE:I = 0x8

.field public static final REQUEST_TYPE_UPDATE_THREAD_RESTART:I = 0x9

.field public static final REQUEST_TYPE_UPDATE_THREAD_RUNNING:I = 0x0

.field public static final RESULT_TYPE_DOWNLOAD_FAILED:I = 0xa

.field public static final RESULT_TYPE_INSTALL_FAILED:I = 0xb

.field public static final RESULT_TYPE_INSTALL_SUCCESS:I = 0xc

.field public static final RESULT_TYPE_PACKAGE_DOWNLOADED:I = 0xd

.field private static final SERVER_URL_CHECK:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static final SERVER_URL_DOWNLOAD:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubDownload.as"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_FOLDER:Ljava/lang/String; = "Update"


# instance fields
.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadTimeOutHandler:Landroid/os/Handler;

.field private mDownloadUriHolder:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFout:Ljava/io/FileOutputStream;

.field private mHandler:Landroid/os/Handler;

.field private mInStream:Ljava/io/InputStream;

.field private mMutexLockConnectionRunnable:I

.field private mPackageNameList:Ljava/util/HashMap;
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

.field private mPackageString:Ljava/lang/String;

.field private mPrevResult:Ljava/lang/String;

.field private mRequestType:I

.field private mResult:Ljava/lang/String;

.field private mResumed:Z

.field private mTimeoutThread:Landroid/os/HandlerThread;

.field private mTotalSize:J

.field private mUpdatePackageMap:Ljava/util/HashMap;
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

.field private mUrlConnection:Ljava/net/HttpURLConnection;

.field private mfile:Ljava/io/File;

.field private packageFileNameMap:Ljava/util/HashMap;
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

.field private prevSizeDownload:J

.field private sizeDownloaded:J

.field private tempFileCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const/16 v0, 0xe

    sput v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->MSG_RULE_FILE_READ_COMPLETED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadUriHolder:Ljava/util/Set;

    iput-wide v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    iput-wide v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    iput-wide v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->tempFileCount:I

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    iput p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mRequestType:I

    iput-object p4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageString:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPrevResult:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;ILjava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->nullAndVoidHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    return p1
.end method

.method private checkDownload(Ljava/net/URL;)Z
    .locals 24

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDownload("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadUriHolder:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    const-string v4, "appInfo"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_24

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v5, "only one package is needed to Update; changing the infoEndTAG to <result>"

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "result"

    move-object v5, v4

    :goto_0
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$1;)V

    const-wide/16 v12, 0x2ee0

    invoke-virtual {v4, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "state_1_mMutexLockConnectionRunnable = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_26
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v7, 0x0

    :try_start_3
    move-object/from16 v0, v16

    invoke-interface {v0, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_27
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    const/4 v7, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    const/4 v7, 0x0

    :try_start_5
    sget-object v9, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "state_2_mMutexLockConnectionRunnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_22
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v11, v7

    move-object v7, v4

    :goto_2
    :try_start_6
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    const-string v14, ""

    const-string v13, ""

    const-string v12, ""

    const-string v4, ""
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_23
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v9, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    new-instance v17, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$1;)V

    const-wide/16 v18, 0x2ee0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    sget-object v10, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "state_3_mMutexLockConnectionRunnable = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v13

    move-object v13, v4

    move-object v4, v12

    move-object v12, v14

    move v14, v15

    :goto_3
    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    sget-object v15, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v17, "checkDownload()-->Resuming parsing input stream..."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "checkDownload()-->parserEvent = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v17, "appId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    sget-object v17, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadCheck(), appId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v17, "resultCode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    sget-object v17, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadCheck(), resultCode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v17, "downloadURI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    sget-object v17, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadCheck(), downloadURI = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v17, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    sget-object v17, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadCheck(), signature = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v17, "contentSize"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    :cond_6
    move-object/from16 v22, v13

    move-object v13, v12

    move-object v12, v10

    move-object v10, v4

    move-object/from16 v4, v22

    const/4 v15, 0x3

    if-ne v14, v15, :cond_11

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "checkDownload()--> tag at XmlPullParser.END_TAG: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    sget-object v14, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v15, "Connected to SamsungApps server; Ready for download."

    invoke-static {v14, v15}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x4

    const-string v15, "wait_downloading"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->get(Landroid/content/Context;)Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v14, v13, v4}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v5, "signature is not matching. skipping the download"

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return v6

    :cond_9
    :try_start_8
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v8, "mDownloadTimeOutHandler is null"

    invoke-static {v4, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v5, v9

    move v8, v10

    move v9, v11

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    :goto_5
    :try_start_9
    sget-object v10, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v11, "xml parsing error."

    invoke-static {v10, v11}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    if-nez v9, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    :cond_b
    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_c
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDownload()---> returning "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v8, v9

    :goto_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    const/4 v4, 0x1

    :try_start_b
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_23
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_1b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_d
    const/4 v9, 0x0

    :try_start_c
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "state_2_mMutexLockConnectionRunnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_1c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move v11, v9

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    :goto_8
    const/4 v5, 0x1

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_25
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_e
    const/4 v5, 0x0

    :try_start_e
    sget-object v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "state_2_mMutexLockConnectionRunnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catch_2
    move-exception v4

    move v8, v10

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v9

    move v9, v5

    move-object/from16 v5, v23

    goto/16 :goto_5

    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadUriHolder:Ljava/util/Set;

    new-instance v14, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;

    invoke-direct {v14, v13, v12, v10}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    new-instance v10, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v12}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$ConnectionRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$1;)V

    const-wide/16 v12, 0x2ee0

    invoke-virtual {v4, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "state_4_end_mMutexLockConnectionRunnable = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, ""

    const-string v12, ""

    const-string v10, ""

    const-string v4, ""

    :cond_11
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    move-object/from16 v22, v4

    move-object v4, v10

    move-object v10, v12

    move-object v12, v13

    move-object/from16 v13, v22

    goto/16 :goto_3

    :cond_12
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v5, "checkDownload()--> XmlPullParser.END_DOCUMENT"

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_13
    const/4 v9, 0x0

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state_5_mMutexLockConnectionRunnable = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total update Size"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " bytes"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x5

    iput v5, v4, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    long-to-int v5, v12

    iput v5, v4, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    long-to-int v5, v12

    iput v5, v4, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadUriHolder:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    if-nez v5, :cond_15

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    :cond_15
    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadUriHolder:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;

    sget-object v10, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calling download file for package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v10

    if-nez v10, :cond_16

    iget-object v10, v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    iget-object v12, v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->code:Ljava/lang/String;

    iget-object v13, v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->downloadURI:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    iget-object v4, v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catch_3
    move-exception v4

    move-object v5, v8

    move v8, v9

    move v9, v11

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_5

    :cond_16
    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to download package "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v4, v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v4, 0x0

    :goto_a
    const-wide/16 v12, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J

    if-eqz v4, :cond_17

    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v6, "Full Download completed."

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_20
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const-wide/16 v12, 0x3e8

    :try_start_11
    invoke-static {v12, v13}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :goto_b
    const/4 v5, 0x7

    :try_start_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_20
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_17
    :goto_c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object v5, v8

    move v6, v4

    move-object v4, v7

    goto/16 :goto_6

    :catch_4
    move-exception v5

    :try_start_13
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_20
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_b

    :catch_5
    move-exception v5

    move v6, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v8

    move v8, v9

    move v9, v11

    goto/16 :goto_5

    :catch_6
    move-exception v4

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    :goto_d
    :try_start_14
    invoke-virtual {v7}, Ljava/net/SocketException;->printStackTrace()V

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v8, "Network is unavailable."

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    if-nez v11, :cond_18

    if-eqz v9, :cond_19

    :cond_18
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    :cond_19
    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_7
    move-exception v4

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    :goto_e
    :try_start_15
    invoke-virtual {v7}, Ljava/net/UnknownHostException;->printStackTrace()V

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v8, "Server is not responding-->Unable to look for requested host."

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    if-nez v11, :cond_1a

    if-eqz v9, :cond_1b

    :cond_1a
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    :cond_1b
    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_8
    move-exception v4

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    :goto_f
    :try_start_16
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v8, "Network error."

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    if-nez v11, :cond_1c

    if-eqz v9, :cond_1d

    :cond_1c
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    :cond_1d
    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catchall_1
    move-exception v4

    move v9, v10

    :goto_10
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mConnected:Z

    if-nez v11, :cond_1e

    if-eqz v9, :cond_1f

    :cond_1e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    :cond_1f
    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state_6_mMutexLockConnectionRunnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_20
    throw v4

    :catchall_2
    move-exception v4

    move v9, v10

    move v11, v7

    goto :goto_10

    :catchall_3
    move-exception v4

    move v11, v9

    move v9, v10

    goto :goto_10

    :catchall_4
    move-exception v4

    move v9, v10

    move v11, v5

    goto :goto_10

    :catchall_5
    move-exception v4

    goto :goto_10

    :catchall_6
    move-exception v4

    move v11, v9

    move v9, v8

    goto :goto_10

    :catch_9
    move-exception v5

    move-object v7, v5

    move v9, v10

    move-object v5, v8

    goto/16 :goto_f

    :catch_a
    move-exception v5

    move v9, v10

    move v11, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_f

    :catch_b
    move-exception v4

    move-object v5, v8

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_f

    :catch_c
    move-exception v4

    move-object v5, v8

    move v11, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_f

    :catch_d
    move-exception v4

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_f

    :catch_e
    move-exception v4

    move v11, v5

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_f

    :catch_f
    move-exception v4

    move-object v5, v8

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_f

    :catch_10
    move-exception v5

    move v6, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_f

    :catch_11
    move-exception v5

    move-object v7, v5

    move v9, v10

    move-object v5, v8

    goto/16 :goto_e

    :catch_12
    move-exception v5

    move v9, v10

    move v11, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_e

    :catch_13
    move-exception v4

    move-object v5, v8

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_e

    :catch_14
    move-exception v4

    move-object v5, v8

    move v11, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_e

    :catch_15
    move-exception v4

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_e

    :catch_16
    move-exception v4

    move v11, v5

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_e

    :catch_17
    move-exception v4

    move-object v5, v8

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_e

    :catch_18
    move-exception v5

    move v6, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_e

    :catch_19
    move-exception v5

    move-object v7, v5

    move v9, v10

    move-object v5, v8

    goto/16 :goto_d

    :catch_1a
    move-exception v5

    move v9, v10

    move v11, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_d

    :catch_1b
    move-exception v4

    move-object v5, v8

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_d

    :catch_1c
    move-exception v4

    move-object v5, v8

    move v11, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_d

    :catch_1d
    move-exception v4

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_d

    :catch_1e
    move-exception v4

    move v11, v5

    move-object v5, v9

    move v9, v10

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_d

    :catch_1f
    move-exception v4

    move-object v5, v8

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_d

    :catch_20
    move-exception v5

    move v6, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_d

    :catch_21
    move-exception v5

    move-object v7, v5

    move v9, v11

    move-object v5, v8

    move v8, v10

    goto/16 :goto_5

    :catch_22
    move-exception v5

    move v9, v7

    move-object v7, v5

    move-object v5, v8

    move v8, v10

    goto/16 :goto_5

    :catch_23
    move-exception v4

    move-object v5, v8

    move v9, v11

    move v8, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_5

    :catch_24
    move-exception v4

    move-object v5, v8

    move v8, v10

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_5

    :catch_25
    move-exception v4

    move-object v5, v9

    move v8, v10

    move v9, v11

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_5

    :catchall_7
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    goto/16 :goto_8

    :catchall_8
    move-exception v5

    move-object v7, v4

    move-object v9, v8

    move-object v4, v5

    goto/16 :goto_8

    :catchall_9
    move-exception v4

    move-object v9, v8

    goto/16 :goto_8

    :catch_26
    move-exception v7

    move-object v8, v9

    move-object/from16 v22, v4

    move-object v4, v7

    move-object/from16 v7, v22

    goto/16 :goto_7

    :catch_27
    move-exception v7

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_7

    :cond_21
    move-object v5, v8

    move v6, v4

    move-object v4, v7

    goto/16 :goto_6

    :cond_22
    move v4, v6

    goto/16 :goto_a

    :cond_23
    move v4, v6

    goto/16 :goto_c

    :cond_24
    move-object v5, v4

    goto/16 :goto_0
.end method

.method private checkUpdate(Ljava/net/URL;)Z
    .locals 13

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUpdate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v8, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    move-object v12, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v12

    :goto_0
    if-eq v7, v1, :cond_3

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "appId"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v11, :cond_0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v10, "resultCode"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v11, :cond_1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v10, "versionName"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v11, :cond_4

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v12

    :goto_1
    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "appInfo"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v6, v5, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getUpdateCheckResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    :cond_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move-object v12, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v12

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_3
    :try_start_3
    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v5, "xml parsing error."

    invoke-static {v3, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v4

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Network is unavailable."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v2, "Server is not responding."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    move v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v3, v4

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Network error."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_7
    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v1

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_6

    :catch_6
    move-exception v2

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_4

    :catch_a
    move-exception v1

    move-object v12, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_3

    :catch_b
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_3

    :cond_4
    move-object v12, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_1
.end method

.method private closeConnection(Ljava/net/HttpURLConnection;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private closeStream()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "closeStream()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeConnection(Ljava/net/HttpURLConnection;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    throw v0
.end method

.method private closeStream(Ljava/io/InputStream;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeStream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to close stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private debug(Landroid/content/Context;)V
    .locals 4

    const-string v0, "auto_update"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PackageList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug, packageList ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deleteModuleLogging()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "deleteModuleLogging starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/32 v2, 0x1e00000

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/HMLog/dumpState-HM(Gear2S).log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "file.delete()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteModuleLogging, res ["

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

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "1"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download file path--> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete pre-existing file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    const/4 v4, -0x1

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadRunnable;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$1;)V

    const-wide/16 v6, 0x3a98

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUrlConnection:Ljava/net/HttpURLConnection;

    new-instance v2, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v10, v2

    const-wide/16 v6, 0x0

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    const/16 v2, 0x2800

    new-array v12, v2, [B

    const/4 v2, 0x0

    sget-object v5, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadFile()---> mTotalSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v5, v12}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data read from server-->"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " bytes"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mFout:Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v12, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    int-to-long v14, v5

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    const-wide/16 v14, 0x64

    mul-long/2addr v8, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    div-long/2addr v8, v14

    long-to-int v5, v8

    if-eq v4, v5, :cond_5

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download progress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " %"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v8, 0x5

    iput v8, v2, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    long-to-int v8, v8

    iput v8, v2, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTotalSize:J

    long-to-int v8, v8

    iput v8, v2, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J

    cmp-long v8, v8, v14

    if-lez v8, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    :goto_2
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadRunnable;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadRunnable;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$1;)V

    const-wide/16 v14, 0x3a98

    invoke-virtual {v4, v8, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v4, v5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0xa

    if-lt v2, v8, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v8, 0x6

    iput v8, v2, Landroid/os/Message;->what:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v2, v10, v6

    if-gtz v2, :cond_12

    const/4 v2, 0x1

    :try_start_3
    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " downloaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete partially downloaded file saved at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return v3

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    cmp-long v8, v8, v14

    if-nez v8, :cond_d

    sget-object v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Downloading halted at "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "%, Retried "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " times."

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    :goto_5
    sget-object v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "prevSizeDownload = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " bytes"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sizeDownloaded = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sizeDownloaded:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " bytes"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_6
    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    :goto_7
    const/16 v5, 0x64

    if-ge v4, v5, :cond_b

    :try_start_5
    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->sConnectionTry:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_a

    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete partially downloaded file saved at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete partially downloaded file saved at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->prevSizeDownload:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->closeStream()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResumed:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete partially downloaded file saved at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mfile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    throw v2

    :catch_1
    move-exception v2

    goto/16 :goto_7

    :catch_2
    move-exception v2

    move v4, v5

    goto/16 :goto_7

    :catch_3
    move-exception v3

    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_7

    :catch_4
    move-exception v2

    move v4, v3

    move v3, v5

    goto/16 :goto_6

    :catch_5
    move-exception v3

    move-object/from16 v16, v3

    move v3, v4

    move v4, v2

    move-object/from16 v2, v16

    goto/16 :goto_6

    :cond_11
    move v3, v2

    goto/16 :goto_4

    :cond_12
    move v2, v3

    goto/16 :goto_3
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v2, "invalid file name value. Removing the mapping"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->packageFileNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewApk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->tempFileCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->tempFileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private getLastNdigits(Ljava/lang/String;I)I
    .locals 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    rem-int v2, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v2, "versionName includes characters other than digits."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private getUpdateCheckResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateCheckResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": installed version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v4, "do not need to proceed package if it\'s additional"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAllAdditionalPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding additional package ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] ver.["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] into result set"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding package ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ver.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] into result set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getLastNdigits(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last2digitsAsInt-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    const/16 v1, 0x63

    if-gt v0, v1, :cond_3

    const-string v0, "Exception"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getUpdateTypePriority(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPrevResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getUpdateTypePriority(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPrevResult:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v0, "Normal"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v0, "Critical"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "No_Update"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v0, "No_Matching_App"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mResult:Ljava/lang/String;

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "At least one of the parameters is invalid in set (installedVersionName, packageName, code, version)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private getUpdateTypePriority(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Critical"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const-string v0, "Exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-string v0, "Normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "No_Update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v0, "No_Matching_App"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nullAndVoidHandler(Landroid/os/Handler;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nullAndVoidHandler("

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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTimeoutThread:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->releaseThread(Landroid/os/HandlerThread;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Requested operation can\'t be carried out on null handler."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseThread(Landroid/os/HandlerThread;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseThread("

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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Requested operation can\'t be carried out on null thread."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startDownloadTimeOutHandler()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "startDownloadTimeOutHandler()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTimeoutThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTimeoutThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mTimeoutThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private updateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateURL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server_url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v5, 0x3

    const/16 v11, 0x8

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run()-->Start update thread...Request_Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v10}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->deleteModuleLogging()Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageNameList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mRequestType:I

    if-ne v0, v4, :cond_12

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->getInstance()Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->getInstance()Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->getUpdateRequestType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->updatePreviousTime(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SAMSUNG-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v1, "SAMSUNG-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isTestMode4Update()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "000"

    const-string v2, "00"

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getCSC()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mnc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "csc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "https://vas.samsungapps.com/stub/stubUpdateCheck.as?"

    iget-object v8, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageString:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "appId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&deviceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&mcc="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&csc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getPD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check url: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkUpdate(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v2, "Update check failed in first try. Retrying..."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkUpdate(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v2, "Retried, update check failed again. Retrying again..."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v6, 0x1f4

    :try_start_3
    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    :try_start_4
    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkUpdate(Ljava/net/URL;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Update check was successful."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    const-string v1, "auto_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->getInstance()Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->getInstance()Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->getUpdateRequestType()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Clearing Update request type result on successful server response."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PreviouslyUpdatedAt"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "UpdateRequestType"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Available for packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPrevResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getUpdateTypePriority(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Normal"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->getUpdateTypePriority(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_b

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Critical update is available, removing history..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PreviouslyUpdatedAt"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "update_version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->nullAndVoidHandler(Landroid/os/Handler;)V

    invoke-direct {p0, v11, v10}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    :goto_7
    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mcc = HostManagerUtils.getMCC()-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mnc = HostManagerUtils.getMNC()-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v1, "000"

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v2, "00"

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&csc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    :cond_9
    const-string v0, "IsNormalUpdateCancel"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "update_version"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->isNormalUpdateCancelled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Normal Update was cancelled by user."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "update_version"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "-1"

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelledVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_c
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Normal Version is different from canceled version"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IsNormalUpdateCancel"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v3

    :goto_b
    move v2, v0

    goto :goto_a

    :cond_d
    move v3, v2

    goto/16 :goto_8

    :cond_e
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNormalUpdateCanceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_10

    const-string v0, "IsUpdateAvailable"

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "UpdateType"

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPrevResult:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving package set into shared pref ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PackageList"

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mUpdatePackageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->debug(Landroid/content/Context;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    :cond_f
    :goto_c
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->debug(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_10
    const-string v0, "IsUpdateAvailable"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    :cond_11
    const-string v0, "PackageList"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    :cond_12
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mRequestType:I

    if-ne v0, v5, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->getPathToDownload(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->startDownloadTimeOutHandler()V

    iput v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mMutexLockConnectionRunnable:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    const-string v1, ""

    const-string v1, ""

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isTestMode4Update()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v2, "000"

    const-string v1, "00"

    :goto_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v2, "000"

    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v1, "00"

    :cond_15
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "https://vas.samsungapps.com/stub/stubDownload.as"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "?appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mPackageString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&encImei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v6

    if-eqz v6, :cond_19

    :goto_e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&mcc="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&mnc="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&csc="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getCSC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&sdkVer="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&pd="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getPD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_6
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StubDownload url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_16

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkDownload(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Download failed first time, Retrying..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v0, 0x3e8

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_f
    :try_start_8
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->increaseCount()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->updateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkDownload(Ljava/net/URL;)Z

    move-result v3

    :goto_10
    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v2, "Download failed after retrying, Retrying again..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-wide/16 v4, 0x3e8

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_11
    :try_start_a
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->increaseCount()V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadedPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->updateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkDownload(Ljava/net/URL;)Z
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v3

    :cond_16
    :goto_12
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End StubDownloadCheckDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    if-nez v3, :cond_1c

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Unable to downlaod update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    goto/16 :goto_6

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    :cond_18
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Internet connection failed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->nullAndVoidHandler(Landroid/os/Handler;)V

    invoke-direct {p0, v11, v10}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_f

    :catch_4
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End StubDownloadCheckDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1a
    :try_start_d
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkDownload(Ljava/net/URL;)Z

    move-result v3

    move-object v0, v4

    goto/16 :goto_10

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End StubDownloadCheckDownload: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1b
    :try_start_e
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->checkDownload(Ljava/net/URL;)Z
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v3

    goto/16 :goto_12

    :cond_1c
    const-string v0, "wait_installing"

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->sendMessage(ILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mDownloadTimeOutHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->nullAndVoidHandler(Landroid/os/Handler;)V

    goto/16 :goto_7

    :cond_1d
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "Unknown update request."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    const-string v1, "mContext / mHandler / mPackageNameList / mPackageString is null or, invlaid."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    move-object v0, v4

    goto/16 :goto_10

    :cond_20
    move v0, v2

    goto/16 :goto_b
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandler("

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

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->mHandler:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
