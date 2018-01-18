.class public Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;
.super Ljava/lang/Object;


# static fields
.field private static final ADAPTER_ENABLE_RETRY_COUNT:I = 0x5

.field private static final ADAPTER_ENABLE_RETRY_TIME:I = 0x3e8

.field private static final MSG_BT_ADAPTER_ENABLE_RETRY:I = 0x65

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_SUCCESS:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtAdapterEnableRetryCount:I

.field private mBtManager:Landroid/bluetooth/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

.field private mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

.field private mHandler:Landroid/os/Handler;

.field private mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

.field private selfHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tUHM:DeviceDiscoveryManager"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapterEnableRetryCount:I

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->selfHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "onCreate.."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;-><init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapterEnableRetryCount:I

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapterEnableRetryCount:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->initialize()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    return-object v0
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0
.end method

.method private initialize()V
    .locals 4

    const/16 v3, 0x12

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapterEnableRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapterEnableRetryCount:I

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startScan4NonSamsung()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "initialize: BluetoothAdapter BluetoothManager.getSystemService() used on BT version 4.3 up.."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "initialize: failed to retrieve BluetoothManager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: BT Manager is not ready, Trying after 1 sec delay, trial count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapterEnableRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->selfHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->selfHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, " mBtAdapter is null, failed to start Device Discovery Manager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onError(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "mEasyPairingResponseListener is null "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION.SDK_INT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "initialize: Version is API level 17 or below, Le scan not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "mDiscoveryReceiver is null "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pairing(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "pairing: mBtAdapter is null"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pairing: pairing() address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " device.getBondState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v3, "pairing: getBondState() == BOND_NONE->createBond()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mContext:Landroid/content/Context;

    const-string v3, "G021"

    const-string v4, "BT pairing"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pairing: pairing() state already BOND_BONDED - mAddress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pairing: IllegalArgumentException address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pairing: IllegalArgumentException address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private startBluetoothLeScan(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothLeScan: BT Adapter is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v3, "startBluetoothLeScan: BT is Off!! BT \'ll be enabled as part of scan request"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothLeScan: failed to turn on the BtAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v3, "startBluetoothLeScan: wait for BT_TURNED_ON"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setScanTurnedOnBT(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothLeScan: BR/EDR is discovering, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setIsBleScan(Z)V

    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    if-eqz v2, :cond_8

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth LE Scan is started - Lollipop or more"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/16 v3, 0x7500

    new-array v4, v5, [B

    fill-array-data v4, :array_0

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    new-instance v6, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v6}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v6, v3, v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setLEScanDeviceName(Ljava/util/List;)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v3, v0, v2, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "Ble scanner is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v2, :cond_a

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothLeScan: mLeCallback is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setLEScanDeviceName(Ljava/util/List;)V

    :cond_b
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothLeScan: LE Scan is started - KitKat or below"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x10t
        -0x1t
    .end array-data
.end method

.method private startBluetoothScan()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothScan: mBtAdapter is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v3, "startBluetoothScan: BT is Off!! BT \'ll be enabled as part of scan request"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothScan: failed to turn on the BtAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setScanTurnedOnBT(Z)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setScanStarted(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "startBluetoothScan: Bluetooth Scan is started"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startBluetoothScan: Bluetooth scan is in progress..."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private startScan4NonSamsung()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "Non Samsung Device should make pop up condition"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "run BR/EDR scan & stop"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createBond(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "createBond: address is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "createBond: mBtAdapter is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "createBond: BT is OFF, enable BT and request for device pairing"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "createBond: failed to turn on the BtAdapter"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setPairAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setPairingBtOn(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "createBond: discovery is in progress. cancel the discovery."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_5
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "createBond..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->pairing(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getmHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getmTask()Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    return-object v0
.end method

.method public startLeScan()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startLeScan(Ljava/util/List;)Z

    return-void
.end method

.method public startLeScan(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startBluetoothLeScan(Ljava/util/List;)Z

    move-result v0

    move v1, v0

    :goto_0
    if-ne v3, v1, :cond_3

    const/16 v0, 0x5dc

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getLeScanTimeOut()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLeScan: Call stopBluetoothLeScan after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milli seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startBluetoothLeScan(Ljava/util/List;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startLeScan: Bluetooth Condition is abnormal statet. so skip EasyPairing"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onError(I)V

    goto :goto_1
.end method

.method public startScan()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getIsBleScan()Z

    move-result v0

    if-ne v3, v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "startScan: BLE scan is in progress"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startBluetoothScan()Z

    move-result v2

    if-ne v3, v2, :cond_2

    const/16 v0, 0xbb8

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getScanTimeOut()I

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startScan: Call stopBluetoothScan after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milli seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    int-to-long v6, v0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setIsBleScan(Z)V

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public stopBluetoothScan()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBluetoothScan: mBtAdapter is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBluetoothScan: Bluetooth is discovering"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "stopBluetoothScan: Bluetooth Scan is stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    goto :goto_0
.end method

.method public stopLeScan()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "stopLeScan: Bt adapter is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "BleScanner or mScanCallback is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth Le Scan is stopped - Lollipop or more"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v2, "stopLeScan: LeScanCallback is null, return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "stopLeScan: Bluetooth Le Scan is stopped - Kitkat or less"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_1
.end method

.method public terminate()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->TAG:Ljava/lang/String;

    const-string v1, "terminate: removeCallbacks"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->getIsBleScan()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->stopLeScan()Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->setIsBleScan(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;->terminate()V

    :cond_2
    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mDiscoveryReceiver:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryReceiver;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mTask:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$StopScanTask;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mEasyPairingResponseListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mLeCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method
