.class public Lcom/samsung/android/app/twatchmanager/update/UpdateConf;
.super Ljava/lang/Object;


# instance fields
.field public checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

.field public mForceUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_PLUS_MODULE:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;->checkType:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;->mForceUpdate:Z

    return-void
.end method
