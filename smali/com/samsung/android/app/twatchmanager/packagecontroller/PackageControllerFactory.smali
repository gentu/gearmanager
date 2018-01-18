.class public Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->instance:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstaller(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->instance:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->makeInstance(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->instance:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->instance:Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    return-object v0
.end method

.method public static getStorageErrorCode(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->makeInstance(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;->getStorageErrorCode()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeInstance(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/libinterface/IInstaller;
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/watchmanager/sdllibrary/PackageController;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
