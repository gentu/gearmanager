.class public Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;
.super Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;


# static fields
.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final WATCH_MANAGER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.watchmanager"


# instance fields
.field private deleteObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageDeleteObserver;

.field private installObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageInstallObserver;

.field private method:Ljava/lang/reflect/Method;

.field private pm:Landroid/content/pm/PackageManager;

.field private uninstallmethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/libinterface/AbstractPackageInstaller;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageInstallObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageInstallObserver;-><init>(Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->installObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageInstallObserver;

    new-instance v0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageDeleteObserver;-><init>(Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->deleteObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageDeleteObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->pm:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageController Context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/Uri;

    aput-object v1, v0, v3

    const-class v1, Landroid/content/pm/IPackageInstallObserver;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "installPackage"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->method:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "deletePackage"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->uninstallmethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->notifyPackageInstalled(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->notifyPackageUninstalled(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getStorageErrorCode()I
    .locals 1

    const/4 v0, -0x4

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->installObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageInstallObserver;

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "com.samsung.android.app.watchmanager"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public installPackage(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->installPackage(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->installPackage(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->installObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageInstallObserver;

    aput-object v4, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x3

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->uninstallmethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;->deleteObserver:Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController$PackageDeleteObserver;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
