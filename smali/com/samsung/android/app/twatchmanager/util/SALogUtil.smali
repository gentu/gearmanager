.class public Lcom/samsung/android/app/twatchmanager/util/SALogUtil;
.super Ljava/lang/Object;


# static fields
.field public static final SA_LOG_EVENT_CANCEL_INSTALL:Ljava/lang/String; = "5108"

.field public static final SA_LOG_EVENT_CONNECT_TO_GEAR:Ljava/lang/String; = "5103"

.field public static final SA_LOG_EVENT_CONTACT_US:Ljava/lang/String; = "5101"

.field public static final SA_LOG_EVENT_LEARN_MORE:Ljava/lang/String; = "5100"

.field public static final SA_LOG_EVENT_PAIRING_CANCEL:Ljava/lang/String; = "5105"

.field public static final SA_LOG_EVENT_PAIRING_OK:Ljava/lang/String; = "5104"

.field public static final SA_LOG_EVENT_REFRESH_SCAN:Ljava/lang/String; = "5107"

.field public static final SA_LOG_EVENT_SELECT_DEVICE:Ljava/lang/String; = "5106"

.field public static final SA_LOG_SCREEN_PROMOTION:Ljava/lang/String; = "510"

.field public static final SA_LOG_SCREEN_SETUP_DEVICE_LIST:Ljava/lang/String; = "512"

.field public static final SA_LOG_SCREEN_SETUP_DEVICE_LIST_NO_GEAR:Ljava/lang/String; = "513"

.field public static final SA_LOG_SCREEN_SETUP_INSTALL_PLUGIN:Ljava/lang/String; = "514"

.field public static final SA_TRACKING_ID:Ljava/lang/String; = "703-399-564897"

.field public static final SA_WATCHMANMAGER_UI_VER:Ljava/lang/String; = "8.1"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertSaLog(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/a/a/a/h;->a()Lcom/samsung/a/a/a/h;

    move-result-object v1

    new-instance v0, Lcom/samsung/a/a/a/g;

    invoke-direct {v0}, Lcom/samsung/a/a/a/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/a/a/a/g;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/f;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/g;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/g;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/a/a/a/h;->a(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static insertSaLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/a/a/a/h;->a()Lcom/samsung/a/a/a/h;

    move-result-object v1

    new-instance v0, Lcom/samsung/a/a/a/e;

    invoke-direct {v0}, Lcom/samsung/a/a/a/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/a/a/a/e;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/f;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/e;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/e;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/a/a/a/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/a/a/a/h;->a(Ljava/util/Map;)I

    :cond_0
    return-void
.end method
