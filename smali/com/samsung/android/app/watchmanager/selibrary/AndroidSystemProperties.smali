.class public Lcom/samsung/android/app/watchmanager/selibrary/AndroidSystemProperties;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ULTRA_POWERSAVING_MODE()Ljava/lang/String;
    .locals 1

    const-string v0, "ultra_powersaving_mode"

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "android.os.SemSystemProperties"

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/selibrary/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/watchmanager/selibrary/ReflectUtil;->callMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
