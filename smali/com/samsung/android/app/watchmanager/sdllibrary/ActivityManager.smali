.class public Lcom/samsung/android/app/watchmanager/sdllibrary/ActivityManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertFromTranslucent(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->convertFromTranslucent(Z)V

    return-void
.end method

.method public removeTask(Landroid/app/ActivityManager;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityManager;->removeTask(II)Z

    return-void
.end method
