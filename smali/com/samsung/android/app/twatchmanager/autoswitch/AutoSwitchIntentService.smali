.class public Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;


# static fields
.field public static final BROADCAST_ACTION_AUTO_SWITCH_COMPLETE:Ljava/lang/String; = "com.samsung.uhm.action.AUTO_SWITCH_COMPLETE"

.field public static final EXTENDED_DATA_STATUS:Ljava/lang/String; = "com.samsung.uhm.action.AUTO_SWITCH_STATUS"

.field public static EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = null

.field public static EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String; = null

.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.samsung.uhm.action.AUTO_SWITCH"

.field private static final TAG:Ljava/lang/String;

.field private static isRunning:Z


# instance fields
.field autoSwitchHandlerThread:Landroid/os/HandlerThread;

.field cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

.field private isSwitchingGearSupportPkg:Z

.field private mBtAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

.field mHandler:Landroid/os/Handler;

.field packagesToDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field packagesToUninstall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field uninstallListener:Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v0, "device_address"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    const-string v0, "device_model_name"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mDeviceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mBtAddress:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isSwitchingGearSupportPkg:Z

    new-instance v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$2;-><init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->uninstallListener:Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->startCleanupTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->enableAllRelatedPackages(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->notifyPlugin()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->verifyAllPackagesAvailable()V

    return-void
.end method

.method private addToPackagesToDisable(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addToPackagesToUninstall(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private enableAllRelatedPackages(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getPluginPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v3, "Skip plugin enable and do it last to avoid exception cases"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private enableBTAndHandleBTConnectRequest(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->isBTEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->handleBTConnectRequest(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private handleBTConnectRequest(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v3, "handleBTConnectRequest()::hasExtra(EXTRA_DEVICE_MODEL_NAME)"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mDeviceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mBtAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->startAutoSwitch(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal()V

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRunning() returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isRunning:Z

    return v0
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
    sget-object v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

.method private notifyPlugin()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "notifyPlugin()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->pluginPackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->verifyPluginActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mBtAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->sendAutoSwitchBroadCast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->saveGearInfo()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "notifyPlugin(), abnormal case. Plugin could not be launched"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBackupLogIntent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

.method private startAutoSwitch(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startAutoSwitch() deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->setCurrentDeviceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mBtAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->setCurrentBTAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->syncGearInfo(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)V

    return-void
.end method

.method private startCleanupTask()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "startCleanupTask()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private stopSelfInternal()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "stopSelfInternal()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelf()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "stopSelfInternal() send  BROADCAST_ACTION_AUTO_SWITCH_COMPLETE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.uhm.action.AUTO_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private stopSelfInternal(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSelfInternal() startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelf(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal()V

    return-void
.end method

.method private verifyAllPackagesAvailable()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "verifyAllPackagesAvailable()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isInstallFromPlaystore(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orderPackageListMap :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal()V

    goto :goto_0
.end method


# virtual methods
.method disablePackageIfNeeded()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "disablePackageIfNeeded()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->disableApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x323

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected disconnectGearIfNeeded()V
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v2, "disconnectGearIfNeeded()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    iput-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isSwitchingGearSupportPkg:Z

    if-eqz v4, :cond_2

    iget-boolean v0, v4, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->supportMultiConnection:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionSupportPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->istUHMUpdate(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isSwitchingGearSupportPkg:Z

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isSwitchingGearSupportPkg:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Switching case. Deleting Update History."

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->clearHistory(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->sendBackupLogIntent()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGearID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGear()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mBtAddress:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSwitchingNonMultiConnectionGear(Lcom/samsung/android/app/twatchmanager/model/GearInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isPackageUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_5

    if-nez v0, :cond_1

    if-eqz v4, :cond_5

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v4, "NON MUltiConnection switching or update case so disconnect if gear connected"

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isConnected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    move v4, v1

    :goto_1
    sget-object v6, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "enable broadcast to reciver backup complete notification"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$BackupStatusListener;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v1, p0, p0, v0, v6}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$BackupStatusListener;-><init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Landroid/os/Looper;Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$1;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->registerReceiver(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZI)V

    move v1, v5

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->processUninstallAndDisableList()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->istUHMUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->queryConnectedDevice(Landroid/content/Context;)Ljava/util/List;

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

    sget-object v6, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

.method public init(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->enableBTAndHandleBTConnectRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DOWNLOAD_THREAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->autoSwitchHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->autoSwitchHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->autoSwitchHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;-><init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isRunning:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mGearInfoManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->setSyncCallback(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isGuiRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->stopSelfInternal(I)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isRunning:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$1;-><init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSyncComplete(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$3;-><init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

.method processUninstallAndDisableList()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUninstallAndDisableList()--> isSwitchingGearSupportPkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isSwitchingGearSupportPkg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isSwitchingGearSupportPkg:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionSupportPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->lastNonMultiConnectionGear()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    invoke-static {p0, v3, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAdditionalPackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    iput-object v8, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToDisable:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

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

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isUnInstallCheckRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->addToPackagesToUninstall(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->addToPackagesToDisable(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    sget-object v6, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    invoke-direct {p0, v3}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->addToPackagesToDisable(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/BNRAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/BNRAsyncTask;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/BNRAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mHandler:Landroid/os/Handler;

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

.method saveGearInfo()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->TAG:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->mBtAddress:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->updateNonMultiConnectionGearInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
