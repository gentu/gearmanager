.class public Lcom/samsung/android/app/twatchmanager/util/SystemPropertyFactory;
.super Ljava/lang/Object;


# static fields
.field private static mInterface:Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/SystemPropertyFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidSystemProperty()Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/SystemPropertyFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/FeatureUtil;->supportSem()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/watchmanager/sdllibrary/AndroidSystemProperties;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/sdllibrary/AndroidSystemProperties;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/SystemPropertyFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/SystemPropertyFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/selibrary/AndroidSystemProperties;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/selibrary/AndroidSystemProperties;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/SystemPropertyFactory;->mInterface:Lcom/samsung/android/app/watchmanager/libinterface/AndroidSystemInterface;

    goto :goto_0
.end method
