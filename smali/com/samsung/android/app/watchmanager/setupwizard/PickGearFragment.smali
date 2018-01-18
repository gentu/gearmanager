.class public Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;


# static fields
.field private static final GROUP_LIMIT:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

.field private gearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

.field private gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

.field private groupInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isScanFinished:Z

.field private isStopped:Z

.field private itemClickFlag:Z

.field private mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEasyPairingListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

.field private mItemPosition:I

.field private mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

.field private final mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private recyclerViewLayout:Landroid/widget/FrameLayout;

.field private resourceRulesManager:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isScanFinished:Z

    iput v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mItemPosition:I

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->itemClickFlag:Z

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$5;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairingListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->itemClickFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->itemClickFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->startDeviceList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->startDeviceList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->startFragment(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerViewLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->initiateEasyPairingSub()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->dismissScanningProgress()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->startEasyPairing()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isScanFinished:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isScanFinished:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Lcom/samsung/android/app/twatchmanager/model/GroupBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    return-object v0
.end method

.method private dismissScanningProgress()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "dismissScanningProgress() starts..."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->getHolder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->isProgressShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v3, "dismissScanningProgress() setProgress change"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->setProgress(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initiateEasyPairing()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "initiateEasyPairing()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detached so return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isScanFinished:Z

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v2, "send intent for statistics G019"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "G019"

    const-string v3, "Easy paring"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->turnOnBT(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Z)V

    goto :goto_0
.end method

.method private initiateEasyPairingSub()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "initiateEasyPairingSub()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v2, "Gear info is not available. Staring Sync"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->syncGearInfo()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "Stating EasyPairing"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->startEasyPairing()V

    goto :goto_0
.end method

.method private onDestroyRecyclerView()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->getHolder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->mUseDownloadedImage:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v4, "onDestroyRecyclerView() recycle bitmap"

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private populateData()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->resourceRulesManager:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isResourceInfoAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->resourceRulesManager:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getGearGroupInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->groupInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->groupInfos:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->groupInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->groupInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    move v1, v0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->groupInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;

    new-instance v4, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;

    sget-object v5, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->ICON:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->getGroupImageInfo(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;)Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;-><init>(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private startDeviceList()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDeviceList() isStopped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->reset()V

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "group_name"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    iget-object v2, v2, Lcom/samsung/android/app/twatchmanager/model/GroupBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->startDeviceList(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startDeviceList(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "startDeviceList()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->dismissScanningProgress()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "from_pick_gear_fragment"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private startEasyPairing()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "startEasyPairing()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairingListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/GroupBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGroupDeviceNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startEasyPairing() filterList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->startLeScan(Ljava/util/List;)Z

    return-void
.end method

.method private startFragment(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment() type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isStopped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->dismissScanningProgress()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    if-eqz v0, :cond_2

    const-string v0, "group_name"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    iget-object v2, v2, Lcom/samsung/android/app/twatchmanager/model/GroupBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mEasyPairBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopEasyPairing()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->terminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "Easy pairing was successfully terminated"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "Easy pairing was already stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initGearIconList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "initGearIconList() starts ... "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->populateData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ak;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gearRulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->resourceRulesManager:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView() starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->setClickListener(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;)V

    const v0, 0x7f0b0061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerViewLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerViewLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0b0062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/au;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy() starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->stopEasyPairing()V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->dismissScanningProgress()V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->onDestroyRecyclerView()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->groupInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->currentClickGroup:Lcom/samsung/android/app/twatchmanager/model/GroupBase;

    iput p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mItemPosition:I

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->itemClickFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->itemClickFlag:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->getItem(I)Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->getTitle()Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->getHolder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->getHolder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->isProgressShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->initiateEasyPairing()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->gridAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->getHolder()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->mItemPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->setProgress(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->initiateEasyPairing()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->isStopped:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->reset()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isResourceInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->initGearIconList()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncGearInfo(ILcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->stopEasyPairing()V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->dismissScanningProgress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->itemClickFlag:Z

    return-void
.end method
