.class public Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;
.super Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;


# static fields
.field private static final STATUS_SCAN:I = 0x1

.field private static final STATUS_STOP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final deviceDbObserver:Landroid/database/ContentObserver;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAvailableDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

.field private mAvailableItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableListView:Landroid/widget/ListView;

.field mCurrentStatus:I

.field private mNewDeviceProgress:Landroid/widget/LinearLayout;

.field private mNoDeviceTextView:Landroid/view/View;

.field private mPairedDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

.field private mPairedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPairedListView:Landroid/widget/ListView;

.field private mScan:Ljava/lang/String;

.field private mStop:Ljava/lang/String;

.field mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

.field private mTweenRotate:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedItemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableItemList:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mCurrentStatus:I

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->deviceDbObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNoDeviceTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedItemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$401(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mTweenRotate:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method private onClickScanStopButton(Landroid/view/MenuItem;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickScanStopButton() item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mStop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->cancelBTAdapter()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->stopConnectUI()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mScan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mCurrentStatus:I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNewDeviceProgress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNewDeviceProgress:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNoDeviceTextView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNoDeviceTextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->doCreateDeviceListView()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->refreshDeviceAddressList()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->doDiscovery()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->startConnectUI()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->showDialogNewGear()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setEdgeEffectColor(Landroid/widget/EdgeEffect;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Landroid/widget/EdgeEffect;

    const-string v1, "mEdge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/widget/EdgeEffect;

    const-string v2, "mGlow"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setEdgeGlowColor(Landroid/widget/AbsListView;I)V
    .locals 3

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mEdgeGlowTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "mEdgeGlowBottom"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    invoke-static {v0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setEdgeEffectColor(Landroid/widget/EdgeEffect;I)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    invoke-static {v0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setEdgeEffectColor(Landroid/widget/EdgeEffect;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    :goto_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected doCreateDeviceListView()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside doCreateDeviceListView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->startConnectUI()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->refreshPariedDevice()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedItemList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedItemList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableItemList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableDevicesFromPluginAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method protected getSyncGearInterface()Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider;->DEVICE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->deviceDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setToolBar(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->deviceDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->onBackPressed()Z

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->onClickScanStopButton(Landroid/view/MenuItem;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b006f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0b006f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mCurrentStatus:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mStop:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mScan:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onResume()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$5;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0a0003

    const/16 v4, 0x15

    const v3, 0x7f0a002a

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Inside onViewCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mScan:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mStop:Ljava/lang/String;

    const v0, 0x7f0b002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedListView:Landroid/widget/ListView;

    const v0, 0x7f0b0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mIsSkipDisconnect:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mTweenRotate:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mTweenRotate:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mTweenRotate:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->setColorFilter(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const v0, 0x7f0b0037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNoDeviceTextView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNoDeviceTextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNewDeviceProgress:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mCurrentStatus:I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mPairedListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setEdgeGlowColor(Landroid/widget/AbsListView;I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->setEdgeGlowColor(Landroid/widget/AbsListView;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->baseInit()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setToolBar(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x7f0b0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method protected startConnectUI()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside startConnectUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mTweenRotate:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method protected stopConnectUI()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "stopConnectUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mCurrentStatus:I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNewDeviceProgress:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAvailableItemList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableItemList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mAvailableItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mIsBackPressed:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "No Gear Found."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNoDeviceTextView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mNewDeviceProgress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
