.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler$1;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method
