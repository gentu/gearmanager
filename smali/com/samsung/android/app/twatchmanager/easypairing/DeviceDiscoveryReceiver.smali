.class public Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final ACTION_LE_DISCOVERY_FINISHED:Ljava/lang/String; = "com.samsung.android.app.twatchmanager.easypairing.ACTION_LE_DISCOVERY_FINISHED"

.field private static final EASYPAIR_LE_SCAN_RSSI:Ljava/lang/String; = "easypair_le_scan_rssi"

.field private static final EASYPAIR_LE_SCAN_TIME_OUT:Ljava/lang/String; = "easypair_le_scan_time_out"

.field private static final EASYPAIR_SCAN_RSSI:Ljava/lang/String; = "easypair_scan_rssi"

.field private static final EASYPAIR_SCAN_TIME_OUT:Ljava/lang/String; = "easypair_scan_time_out"

.field private static final MANUFACTURER_FLAG:B = -0x1t

.field private static final PREF_EASYPAIR_SCAN_INFO:Ljava/lang/String; = "pref_easypair_scan_info"

.field private static final PURPOSE_RESET:B = 0x1t

.field private static final STOP_LE_SCAN_TIMEOUT:I = 0x7d0

.field private static final STOP_SCAN_TIMEOUT:I = 0xbb8

.field private static TAG:Ljava/lang/String; = null

.field private static final THRESHOLD_LE_RSSI:I = -0x46

.field private static final THRESHOLD_RSSI:I = -0x46


# instance fields
.field private final EventHandler:Landroid/os/Handler;

.field private isBleScan:Z

.field private isPairingBtOn:Z

.field private isScanStarted:Z

.field private isScanTurnedOnBT:Z

.field private mAppDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtConverter:Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;

.field private mContext:Landroid/content/Context;

.field private mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

.field private mLeEventHandler:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

.field private mLeScanEventHanlder:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

.field private mLeScannedDeviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

.field private mScannedDeviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private pairAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tUHM:DeviceDiscoveryReceiver"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanTurnedOnBT:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isBleScan:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isPairingBtOn:Z

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->pairAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mAppDeviceList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeEventHandler:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScanEventHanlder:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$1;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->EventHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScanEventHanlder:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->savePreferences()Z

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->registerReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->syncRulesIfNecessary()V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;-><init>(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mBtConverter:Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeEventHandler:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "DeviceDiscoveryReceiver: Version is API level 17 or below, Le scan not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->bluetoothDeviceActionFound(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->addLeScannedDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->bluetoothAdapterActionDiscoveryFinished(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->bluetoothDeviceActionBondStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->bluetoothAdapterActionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->bluetoothLeActionDiscoveryFinished(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mAppDeviceList:Ljava/util/List;

    return-object v0
.end method

.method private addLeScannedDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mBtConverter:Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;->isLEdevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mBtConverter:Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;->getBRdevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change device - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "First Gear device found, stop scan"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->getmTask()Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->stopLeScan()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->sendActionLeDiscoveryFinishedIntent()V

    :cond_1
    return-void
.end method

.method private bluetoothAdapterActionDiscoveryFinished(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "action : BluetoothAdapter.ACTION_DISCOVERY_FINISHED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionDiscoveryFinished: scan finished successfully"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanStarted:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onScanFinished(Ljava/util/Set;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanStarted:Z

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionDiscoveryFinished: scan is not triggered by easy pairing CM"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionDiscoveryFinished: can finished un-successfully"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onError(I)V

    goto :goto_1
.end method

.method private bluetoothAdapterActionStateChanged(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionStateChanged; Bluetooth state ON"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanTurnedOnBT:Z

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getIsBleScan()Z

    move-result v0

    if-ne v2, v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionStateChanged: start Le scan"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startLeScan()V

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanTurnedOnBT:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isPairingBtOn:Z

    if-ne v2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionStateChanged: create bond"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->pairAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->pairAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->createBond(Ljava/lang/String;)Z

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isPairingBtOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->pairAddress:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionStateChanged: start scan"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startScan()Z

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothAdapterActionStateChanged; Bluetooth state OFF"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private bluetoothDeviceActionBondStateChanged(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothDeviceActionBondStateChanged: device is null, return"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothDeviceActionBondStateChanged: Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bond state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothDeviceActionBondStateChanged: mResponseListener is null "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bluetoothDeviceActionFound(Landroid/content/Intent;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "action : BluetoothDevice.ACTION_FOUND"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothDeviceActionFound: device/mContext is null, return"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothDeviceActionFound: Device Found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with Address - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isShowingCondition(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Device not supported. Returning"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getThresholdRssi()I

    move-result v2

    const-string v3, "android.bluetooth.device.extra.RSSI"

    const/16 v4, -0x8000

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    sget-object v4, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bluetoothDeviceActionFound: Device found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with RSSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v3, v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bluetoothDeviceActionFound: Adding Device(BT) to HashMap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with RSSI: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", threshold rssi is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothDeviceActionFound: First Gear device found, stop scan"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->getmHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->getmTask()Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->stopBluetoothScan()Z

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetoothDeviceActionFound: Device(BT) not added to HashMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with RSSI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", threshold rssi is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private bluetoothLeActionDiscoveryFinished(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothLeActionDiscoveryFinished()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothLeActionDiscoveryFinished: Le scan finished successfully"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onLeScanFinished(Ljava/util/Set;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "bluetoothLeActionDiscoveryFinished: scan finished un-successfully"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onLeScanFinished(Ljava/util/Set;I)V

    goto :goto_0
.end method

.method private clearSharedPreferences()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "clearSharedPreferences..."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "clearSharedPreferences: mContext is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    const-string v2, "pref_easypair_scan_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private savePreferences()Z
    .locals 4

    const/4 v0, 0x0

    const/16 v3, -0x46

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "savePreferences: save timeout & threshold rssi values"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "savePreferences: mContext is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    const-string v2, "pref_easypair_scan_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "easypair_scan_time_out"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easypair_scan_rssi"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easypair_le_scan_time_out"

    const/16 v2, 0x7d0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "easypair_le_scan_rssi"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private stopBluetoothScan()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->stopBluetoothScan()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private stopLeScan()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setIsBleScan(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->stopLeScan()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private syncRulesIfNecessary()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "deviceInfo is not available, need to parse xml"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->syncGearInfoSynchronously()Z

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkIfGearResetMode([B)Z
    .locals 6

    const/16 v5, 0x75

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "checkIfGearResetMode: len is zero, break"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v4

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "checkIfGearResetMode: Manufacture type"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, p1, v4

    if-nez v0, :cond_5

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    if-eq v2, v5, :cond_3

    :goto_2
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, -0x2

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v4, "checkIfGearResetMode: Company Id: 0x0075 or 0x7500"

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfGearResetMode: Version:    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfGearResetMode: Service Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfGearResetMode: Device Id:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    if-ne v3, v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "checkIfGearResetMode: purpose is reset mode, return true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "checkIfGearResetMode: purpose is not reset mode, return false"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getIsBleScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isBleScan:Z

    return v0
.end method

.method public getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeEventHandler:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeEventHandler:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeScanTimeOut()I
    .locals 4

    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    const-string v2, "pref_easypair_scan_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "easypair_le_scan_time_out"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeScanTimeOut:: scan time out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getLeThresholdRssi()I
    .locals 4

    const/16 v0, -0x46

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    const-string v2, "pref_easypair_scan_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "easypair_le_scan_rssi"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeThresholdRssi:: threshold rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getScanCallback()Landroid/bluetooth/le/ScanCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScanEventHanlder:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScanEventHanlder:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScanTimeOut()I
    .locals 4

    const/16 v0, 0xbb8

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    const-string v2, "pref_easypair_scan_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "easypair_scan_time_out"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScanTimeOut:: scan time out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getThresholdRssi()I
    .locals 4

    const/16 v0, -0x46

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    const-string v2, "pref_easypair_scan_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "easypair_scan_rssi"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThresholdRssi:: threshold rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "EventHandler : onReceive().."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, "intent is null return;"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->EventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendActionLeDiscoveryFinishedIntent()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.twatchmanager.easypairing.ACTION_LE_DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->EventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setIsBleScan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isBleScan:Z

    return-void
.end method

.method public setLEScanDeviceName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mAppDeviceList:Ljava/util/List;

    return-void
.end method

.method public setPairAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->pairAddress:Ljava/lang/String;

    return-void
.end method

.method public setPairingBtOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isPairingBtOn:Z

    return-void
.end method

.method public setScanStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanStarted:Z

    return-void
.end method

.method public setScanTurnedOnBT(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanTurnedOnBT:Z

    return-void
.end method

.method public terminate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->TAG:Ljava/lang/String;

    const-string v1, " terminate "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->unregisterReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->clearSharedPreferences()Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mScannedDeviceList:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScannedDeviceList:Ljava/util/Set;

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanTurnedOnBT:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isScanStarted:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isBleScan:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->isPairingBtOn:Z

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->pairAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeEventHandler:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeEventHandler;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mLeScanEventHanlder:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver$LeScanEventHandler;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->mDeviceDiscoveryManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    return-void
.end method
