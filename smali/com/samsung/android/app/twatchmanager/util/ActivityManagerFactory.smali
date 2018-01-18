.class public Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;
.super Ljava/lang/Object;


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/watchmanager/sdllibrary/ActivityManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/sdllibrary/ActivityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/selibrary/ActivityManager;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/selibrary/ActivityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;

    goto :goto_0
.end method
