.class public Lcom/samsung/android/app/twatchmanager/model/DeviceItem;
.super Ljava/lang/Object;


# instance fields
.field public connectAsAudio:Z

.field public deviceName:Ljava/lang/String;

.field public gearGroup:Lcom/samsung/android/app/twatchmanager/model/GearGroup;

.field public hostMinMemory:I

.field public iconDrawableName:Ljava/lang/String;

.field public requiresPairing:Z

.field public supportMultiConnection:Z

.field public supportNonSamsung:Z

.field public supportTablet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->supportTablet:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->connectAsAudio:Z

    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->hostMinMemory:I

    const-string v0, "gm_managerdevices_list_ic_wearable"

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->iconDrawableName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->requiresPairing:Z

    return-void
.end method
