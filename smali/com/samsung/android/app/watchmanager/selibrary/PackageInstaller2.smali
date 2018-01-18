.class public Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;
.super Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;


# static fields
.field private static final INTENT_NAME:Ljava/lang/String; = "tUHM.install_complete"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->destroyReceiver()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->notifyPackageInstalled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->notifyPackageUninstalled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->notifyPackageInstalled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->notifyPackageUninstalled(Ljava/lang/String;I)V

    return-void
.end method

.method private createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "tUHM.install_complete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method

.method private destroyReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    return-void
.end method

.method private getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v3, "FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;-><init>(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mListener:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    return-object v0
.end method

.method private installPackage_(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->installPackage__(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "tUHM.install_complete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private installPackage__(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    const-wide/16 v4, -0x1

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v1

    const/high16 v4, 0x10000

    new-array v4, v4, [B

    :goto_1
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v5

    add-long/2addr v2, v8

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrote totally "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v1, "commit called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getStorageErrorCode()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->TAG:Ljava/lang/String;

    const-string v1, "not necessary to implement"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public installPackage(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->installPackage_(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->installPackage_(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->getListener()Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "tUHM.install_complete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
