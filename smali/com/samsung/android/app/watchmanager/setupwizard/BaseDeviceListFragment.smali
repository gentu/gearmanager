.class public abstract Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;


# static fields
.field protected static EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

.field protected static EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bLastsync:Z

.field private enableClick:Z

.field enableClickHandler:Landroid/os/Handler;

.field enableClickRunnable:Ljava/lang/Runnable;

.field private idBTOn:J

.field protected isTurnedOnBT:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

.field protected mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

.field protected mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

.field private mDisconnectDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

.field private mDisconnectWearableDevice:Z

.field protected mGearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

.field mIsBackPressed:Z

.field protected mIsSkipDisconnect:Z

.field private mParentBTOn:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private positionBTOn:I

.field private tempConnectedAddress:Ljava/lang/String;

.field private viewBTOn:Landroid/view/View;

.field private wearableListener:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v0, "device_address"

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    const-string v0, "device_model_name"

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mGearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDisconnectDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->isTurnedOnBT:Z

    iput-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mIsSkipDisconnect:Z

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mParentBTOn:Landroid/widget/AdapterView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->viewBTOn:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->tempConnectedAddress:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->positionBTOn:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->idBTOn:J

    iput-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDisconnectWearableDevice:Z

    iput-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->bLastsync:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClick:Z

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClickRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClickHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$7;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->wearableListener:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClick:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->tempConnectedAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDisconnectWearableDevice:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDisconnectWearableDevice:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Landroid/widget/AdapterView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mParentBTOn:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Landroid/widget/AdapterView;)Landroid/widget/AdapterView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mParentBTOn:Landroid/widget/AdapterView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->viewBTOn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->viewBTOn:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->positionBTOn:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->positionBTOn:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->idBTOn:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->idBTOn:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->connect(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Lcom/samsung/android/app/twatchmanager/util/CommonDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDisconnectDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->setTempItemValue(Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;)V

    return-void
.end method

.method private connect(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "connect()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->type:I

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->address:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick() address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onItemClick() address is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->cancelBTAdapter()V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->isBTEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect() deviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGearInfo(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->group:Lcom/samsung/android/app/twatchmanager/model/GearGroup;

    iget-boolean v1, v1, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->customPairing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->unregisterReceiver()V

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->pairing(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, " connect() Exceptional case BT is off"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onItemClick() type is not device"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pairing(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->isPaired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G021"

    const-string v2, "BT pairing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->wearableListener:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->pair(Ljava/lang/String;Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;)V

    return-void
.end method

.method private setTempItemValue(Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mParentBTOn:Landroid/widget/AdapterView;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->viewBTOn:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->positionBTOn:I

    iput-wide p4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->idBTOn:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDisconnectWearableDevice:Z

    iput-object p6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->tempConnectedAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected baseInit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mGearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside sync part"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->syncGearInfo()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->createDeviceListView()V

    goto :goto_0
.end method

.method protected cancelBTAdapter()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "cancelBTAdapter()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method protected createDeviceListView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside createDeviceListView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->registerReceiverForDiscovery()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->doCreateDeviceListView()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->doDiscovery()V

    return-void
.end method

.method protected abstract doCreateDeviceListView()V
.end method

.method protected doDiscovery()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$6;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->INITIAL_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V

    return-void
.end method

.method protected doOnItemClick()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClick:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract getSyncGearInterface()Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mIsBackPressed:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->cancelBTAdapter()V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->startLastLaunchedPlugin(ZLjava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPluginStarted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mActivity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->enableClick:Z

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mGearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->getSyncGearInterface()Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->stopSyncGearInfo()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->unregisterReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->destroy()V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->cancelBTAdapter()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->stopConnectUI()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method protected showDialogNewGear()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->bLastsync:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->bLastsync:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isNewGearUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    const v1, 0x7f06004f

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelBtnListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected abstract startConnectUI()V
.end method

.method protected abstract stopConnectUI()V
.end method
