.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field public mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler$1;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method
