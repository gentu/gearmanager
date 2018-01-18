.class public Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;
.implements Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;


# static fields
.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String; = "device_model_name"

.field private static final FRAGMENT_MINIMUM_SHOWN_TIME:I = 0x3e8

.field private static final REQUEST_CODE_INSTALL_VIA_PLAY_STORE:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_INSTALLATION:Ljava/lang/String; = "tUHM:Installation analysis"

.field private static mRunnable:Ljava/lang/Runnable;

.field private static mScanHandler:Landroid/os/Handler;


# instance fields
.field private cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

.field private downloadStartTimeInMillis:J

.field private installStartTimeInMillis:J

.field private installationRequestSent:Z

.field private isDiscoveryFinished:Z

.field private isSwitching:Z

.field private isSwitchingGearSupportPkg:Z

.field private isSwitchingNonMultiConnectionGear:Z

.field private mActivity:Landroid/app/Activity;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBTScanReceiver:Landroid/content/BroadcastReceiver;

.field private mBtAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDownloadHandler:Landroid/os/Handler;

.field private mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

.field private mFragmentStartTime:J

.field private mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallationHandler:Landroid/os/Handler;

.field private mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

.field private mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

.field private final mPermissionTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

.field private packagesToDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packagesToUninstall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingInstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private previewImage:Landroid/widget/ImageView;

.field private targetAppStorePkg:Ljava/lang/String;

.field private transitionLayout:Landroid/widget/RelativeLayout;

.field private uiHelper:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

.field private final uninstallListener:Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mScanHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isDiscoveryFinished:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingGearSupportPkg:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingNonMultiConnectionGear:Z

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    iput-wide v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->downloadStartTimeInMillis:J

    iput-wide v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installStartTimeInMillis:J

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$11;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$14;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->uninstallListener:Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->targetAppStorePkg:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$16;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPermissionTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enableAllRelatedPackages(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->confirmAllProviderInstallations()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->downloadStartTimeInMillis:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->downloadStartTimeInMillis:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->startInstallationProcess(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->checkAndStartDownload()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->startInstallViaIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPermissionTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->uiHelper:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isDiscoveryFinished:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isDiscoveryFinished:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->doRemainConnectProcess()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->handleBTConnectRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->disablePackageIfNeeded()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->uninstallListener:Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installStartTimeInMillis:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installStartTimeInMillis:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->startCleanupTask()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;)Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->disconnectGearIfNeeded()V

    return-void
.end method

.method static synthetic access$3602(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installationRequestSent:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->onInstallationResult(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->checkAndStartDownloadSub()V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->processUninstallAndDisableList()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->callPluginActivityWithDelay()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->showOkOnlyAlertDialog(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enablePackagesOnException()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->callPluginActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingNonMultiConnectionGear:Z

    return v0
.end method

.method private addExtraPackagesForNonSamsung()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addToPackagesToDisable(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToPackagesToDisable() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addToPackagesToUninstall(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToPackagesToUninstall() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private callPluginActivity()V
    .locals 9

    const/4 v4, 0x0

    const v2, 0x7f0b0053

    const/4 v8, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "callPluginActivity()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->pluginPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getLaunchMode()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->verifyPluginActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;->getAnimationState(Z)Landroid/os/Bundle;

    move-result-object v7

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitching:Z

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->startPluginActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateTimer;->setPostponeTimer(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->saveGearInfo()V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "callPluginActivity(), abnormal case. Plugin could not be launched"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v7, v4

    goto :goto_0
.end method

.method private callPluginActivityWithDelay()V
    .locals 8

    const-wide/16 v6, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mFragmentStartTime:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callPluginActivityWithDelay, difference ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    sub-long v0, v6, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->callPluginActivity()V

    goto :goto_0
.end method

.method private checkAndStartDownload()V
    .locals 5

    const/16 v4, 0x2cd

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, " checkAndStartDownload() "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkAndStartDownload() activity got detached"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getCurrentBTAdderess()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isConnected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " update/reinstall case:  deviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Change launch mode to request connection after update/reinstall"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isInstallFromPlaystore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Non Samsung device installation"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isSupportModuleInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enableAllRelatedPackages(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->addExtraPackagesForNonSamsung()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->showAlertDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->showAlertDialog(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPermissionTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->INITIAL_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkAndStartDownloadSub()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkAndStartDownloadSub()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isLocalInstallation()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Local plugin installation"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isSupportModuleInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->simulateDownload()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x2ca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Download support module from server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->setListenerHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAdditionalPackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " additionalPackageList :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-boolean v3, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->onlyForNonSamsung:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " additionalPackageList For Samsung :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->startDownload(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->startDownload(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private confirmAllProviderInstallations()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->handleProviderInstallation(Ljava/lang/String;)V

    return-void
.end method

.method private disablePackageIfNeeded()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "disablePackageIfNeeded()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disablePackageIfNeeded() pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->disableApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x323

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private disconnectGearIfNeeded()V
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v2, "disconnectGearIfNeeded()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectGearIfNeeded() currentGearInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingGearSupportPkg:Z

    if-eqz v4, :cond_2

    iget-boolean v0, v4, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->supportMultiConnection:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionSupportPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lastSupportGearPackage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentSupportGearPackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->istUHMUpdate(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingGearSupportPkg:Z

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingGearSupportPkg:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v2, "Switching case. Deleting Update History."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->clearHistory(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->sendBackupLogIntent()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGearID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGear()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSwitchingNonMultiConnectionGear(Lcom/samsung/android/app/twatchmanager/model/GearInfo;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingNonMultiConnectionGear:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isPackageUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v2, :cond_5

    iget-boolean v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingNonMultiConnectionGear:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v4, "NON MUltiConnection switching or update case so disconnect if gear connected"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isConnected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    move v4, v1

    :goto_1
    sget-object v6, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last Gear device isConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "enable broadcast to reciver backup complete notification"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$BackupStatusListener;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->registerReceiver(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZI)V

    move v1, v5

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->processUninstallAndDisableList()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->istUHMUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->queryConnectedDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    sget-object v6, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " UHM to tUHM case, deviceData ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGearInfo(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-boolean v6, v6, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->supportMultiConnection:Z

    if-nez v6, :cond_6

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    move v4, v5

    move v0, v5

    goto/16 :goto_1

    :cond_7
    move v4, v5

    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v4, v1

    move v0, v1

    goto/16 :goto_1
.end method

.method private doDiscovery()V
    .locals 6

    const-wide/16 v4, 0xfa0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "doDiscovery"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isDiscoveryFinished:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$17;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mScanHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mScanHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mScanHandler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mScanHandler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private doRemainConnectProcess()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "doRemainConnectProcess"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->startInstallation(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Fragment already detached ignore this request"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableAllRelatedPackages(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enableAllRelatedPackages() containerPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getPluginPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable packagelist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v3, "Skip plugin enable and do it last to avoid exception cases"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private enableBTAndHandleBTConnectRequest(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$12;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->turnOnBT(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Z)V

    return-void
.end method

.method private enablePackagesOnException()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionSupportPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGear()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePackagesOnException() containerPackage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deviceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enableAllRelatedPackages(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private getTargetAppStorePkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->targetAppStorePkg:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getTargetAppStorePkg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->targetAppStorePkg:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->targetAppStorePkg:Ljava/lang/String;

    return-object v0
.end method

.method private handleBTConnectRequest(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "device_model_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v3, "handleBTConnectRequest()::hasExtra(EXTRA_DEVICE_MODEL_NAME)"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->setDeviceSpecificDownloadLayout(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBTConnectRequest()::deviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Device ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GALAXY Gear"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->doDiscovery()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->startInstallation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isUnInstallCheckRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "com.samsung.android.gear2smodule"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.gear1module"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "com.samsung.android.gear2smodule"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.android.gear1module"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUnInstallCheckRequired() lastSupportGearPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentSupportGearPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private onInstallationResult(I)V
    .locals 10

    const-wide/16 v8, 0x7d0

    const/16 v6, 0x2cd

    const/16 v5, 0x13b

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallationResult() requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallationResult() pendingInstallList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->addExtraPackagesForNonSamsung()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->showAlertDialog(I)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstallationResult() unregisterReceiver(mPSIReceiver)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInstallationResult() finish()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->showAlertDialog(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInstallationResult() finish()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method private processUninstallAndDisableList()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUninstallAndDisableList()--> isSwitchingGearSupportPkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingGearSupportPkg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitchingGearSupportPkg:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionSupportPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGear()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lastSupportGearPackage:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " currentSupportGearPackage: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAdditionalPackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processUninstallAndDisableList() additionalPackageList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " packagelist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-object v8, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToDisable:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isPackageCanDisable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.samsung.accessory.goproviders"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.samsung.accessory.saproviders"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.sec.android.fotaprovider"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->hasPermissionToDisable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isUnInstallCheckRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->addToPackagesToUninstall(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->addToPackagesToDisable(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    sget-object v6, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processUninstallAndDisableList() should dont disable  as per rules:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v3}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isPackageCanDisable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->addToPackagesToDisable(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/BNRAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->packagesToUninstall:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/BNRAsyncTask;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/BNRAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_7
    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private saveGearInfo()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveGearInfo() gearInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->supportMultiConnection:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->deviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->updateNonMultiConnectionGearInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendBackupLogIntent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "LL::send dump log broadcast in case of the plugin change"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.plugin.BACKUP_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDeviceSpecificDownloadLayout(Ljava/lang/String;)V
    .locals 9

    const v8, 0x7f0b0053

    const v7, 0x7f0a000d

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v3, "setDeviceSpecificDownloadLayout() starts"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/twatchmanager/vi/VIFactory;->getDownloadInstallLayout(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0b006a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-lez v3, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {p1, v4}, Lcom/samsung/android/app/twatchmanager/vi/VIFactory;->getVIFragment(Ljava/lang/String;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)Landroid/app/Fragment;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "vi_animation_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    const v4, 0x7f0b001f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v4, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-lez v3, :cond_9

    move v0, v1

    :goto_1
    invoke-direct {v4, v5, v6, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->uiHelper:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "from_pairing_screen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->uiHelper:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->showTransitionLayout(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGearInfo(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->group:Lcom/samsung/android/app/twatchmanager/model/GearGroup;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->previewImage:Landroid/widget/ImageView;

    invoke-static {v1, v0, v3}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->setHeaderImageWithRules(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_5
    if-nez v2, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitching:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getLastDisconnectedDeviceIDFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method private showAlertDialog(I)V
    .locals 6

    const v3, 0x7f06002d

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlertDialog() status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v4, v5, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_1

    :goto_1
    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$10;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelBtnListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    :sswitch_0
    const v0, 0x7f06001a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTextToOkBtn(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTextToCancelBtn(Ljava/lang/String;)V

    const v0, 0x7f06002a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->pendingInstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f060020

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v0, "Need external storage permission for fake_server functionality"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f06003a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTextToOkBtn(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTextToCancelBtn(Ljava/lang/String;)V

    const v0, 0x7f06003b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$5;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$5;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :sswitch_6
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$6;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$6;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :sswitch_7
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$8;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$8;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$9;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$9;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelBtnListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2c4 -> :sswitch_0
        0x2c7 -> :sswitch_1
        0x2cd -> :sswitch_2
        0x2ce -> :sswitch_4
        0x1389 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c4 -> :sswitch_5
        0x2c7 -> :sswitch_5
        0x2cd -> :sswitch_6
        0x2ce -> :sswitch_8
        0x1389 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2ce
        :pswitch_0
    .end packed-switch
.end method

.method private showOkOnlyAlertDialog(ILjava/lang/Object;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showOkOnlyAlertDialog() status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0, v4, v5, v4}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UnKnow Error"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    return-void

    :sswitch_0
    const v2, 0x7f06002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    check-cast p2, Lcom/samsung/android/app/twatchmanager/model/InstallationError;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/packagecontroller/PackageControllerFactory;->getStorageErrorCode(Landroid/content/Context;)I

    move-result v2

    iget v3, p2, Lcom/samsung/android/app/twatchmanager/model/InstallationError;->errorCode:I

    if-ne v2, v3, :cond_0

    const v2, 0x7f06004c

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p2, Lcom/samsung/android/app/twatchmanager/model/InstallationError;->apkSize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation failed ! \nError Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Lcom/samsung/android/app/twatchmanager/model/InstallationError;->errorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_1
        0x2c9 -> :sswitch_0
        0x2cb -> :sswitch_0
    .end sparse-switch
.end method

.method private simulateDownload()V
    .locals 12

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "simulateDownload()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getLocalInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAdditionalPackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " additionalPackageList :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-boolean v8, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->onlyForNonSamsung:Z

    if-eqz v8, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " additionalPackageList For Samsung :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getLocalInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, v5, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->hasEnoughStorage(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/32 v0, 0x100000

    div-long v0, v2, v0

    long-to-int v0, v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_INSUFFICIENT_STORAGE ! sizeInMB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const/16 v3, 0x2cc

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x2c3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v4

    :goto_4
    const/16 v1, 0x64

    if-gt v0, v1, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const/16 v7, 0x2c6

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-string v7, "5"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "1"

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "2"

    long-to-double v8, v2

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    int-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    mul-int/lit8 v7, v0, 0x64

    int-to-long v8, v7

    invoke-virtual {v1, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x2c5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Local installation failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x2c4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_7
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private startCleanupTask()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "startCleanupTask()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startInstallViaIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInstallViaIntent() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getTargetAppStorePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installationRequestSent:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v2, "startInstallViaIntent()"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private startInstallation(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startInstallation() deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setCurrentDeviceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBtAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->setCurrentBTAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->syncGearInfo(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)V

    return-void
.end method

.method private startInstallationProcess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->startInstallationProcess(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateWaitingView()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->transitionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->transitionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "bt_addr"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "DEVICE_MODEL"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MODEL_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v2, :cond_2

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v3, "onActivityCreated()"

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start Connect directly : BTAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_address"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v2, "device_model_name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enableBTAndHandleBTConnectRequest(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void

    :cond_2
    const-string v0, "isFromSearchForNewDevice"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromSearchForNewDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_plugin_address"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enableBTAndHandleBTConnectRequest(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, " Cancel Button clicked"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "514"

    const-string v1, "5108"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->insertSaLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->enablePackagesOnException()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b001f
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->updateWaitingView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "OnCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "switching"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitching:Z

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate ends getActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0a000c

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    const v0, 0x7f0b006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->transitionLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->updateWaitingView()V

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy() starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->setSyncCallback(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadManager:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;->stopDownload()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->stopInstallation()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationManager:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->stopInstallation()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mInstallationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mPSIReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$PlayStoreInstallationReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Exception: mActivity.unregisterReceiver(mBTScanReceiver)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "Exception: mActivity.unregisterReceiver(mPSIReceiver)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() installationRequestSent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installationRequestSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installationRequestSent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->installationRequestSent:Z

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->onInstallationResult(I)V

    :cond_0
    return-void
.end method

.method public onSyncComplete(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mDownloadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$15;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncComplete() synType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->mFragmentStartTime:J

    const v0, 0x7f0b0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->previewImage:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->isSwitching:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getLastDisconnectedDeviceIDFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method
