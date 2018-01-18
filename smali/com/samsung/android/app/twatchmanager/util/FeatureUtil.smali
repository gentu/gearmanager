.class public final Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static semAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->semAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSupportSemAPI(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportSemAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.feature.samsung_experience_mobile"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->semAvailable:Z

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->TAG:Ljava/lang/String;

    const-string v1, "semAvailable set as true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->semAvailable:Z

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->TAG:Ljava/lang/String;

    const-string v1, "semAvailable set as false "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->checkSupportSemAPI(Landroid/content/Context;)V

    return-void
.end method

.method public static supportSem()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->semAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->semAvailable:Z

    return v0
.end method
