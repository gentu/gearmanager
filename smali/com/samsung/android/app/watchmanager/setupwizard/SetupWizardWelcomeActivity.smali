.class public Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/IUpdateFragmentListener;


# static fields
.field private static final ACTION_VIEW_DETAIL:Ljava/lang/String; = "com.samsung.android.spv.ACTION_VIEW_DETAIL"

.field public static final EXTRA_BT_ADDR:Ljava/lang/String; = "bt_addr"

.field public static final EXTRA_CALLER_PACKAGER_NAME:Ljava/lang/String; = "CALLER_PACKAGE"

.field public static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field public static final EXTRA_DEVICE_ADDRESS_FROM_STUB:Ljava/lang/String; = "BT_ADD_FROM_STUB"

.field public static final EXTRA_DEVICE_MODEL:Ljava/lang/String; = "DEVICE_MODEL"

.field public static final EXTRA_FORCE_UPDATE:Ljava/lang/String; = "force_update"

.field public static final EXTRA_IS_FROM_NFC:Ljava/lang/String; = "isFromNFC"

.field public static final EXTRA_IS_FROM_PLUGIN:Ljava/lang/String; = "isFromPlugin"

.field public static final EXTRA_LAUNCH_MODE:Ljava/lang/String; = "launch_mode"

.field public static final EXTRA_MODEL_NAME:Ljava/lang/String; = "MODEL_NAME"

.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final EXTRA_SWITCHING:Ljava/lang/String; = "switching"

.field public static final FRAGMENT_TYPE_DEVICE_LIST:I = 0x2

.field public static final FRAGMENT_TYPE_HMCONNECT:I = 0x3

.field public static final FRAGMENT_TYPE_LOADING:I = 0x1

.field public static final FRAGMENT_TYPE_PAIRING:I = 0x6

.field public static final FRAGMENT_TYPE_SETUP_DEVICE_LIST:I = 0x4

.field public static final FRAGMENT_TYPE_UPDATE_NOTICE:I = 0x5

.field public static final REQUEST_SYSTEM_INTENT_INSTALLATION:I = 0x11

.field private static final TAG:Ljava/lang/String;

.field private static isGuiRunning:Z


# instance fields
.field allDeviceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;",
            ">;"
        }
    .end annotation
.end field

.field autoSwitchListener:Landroid/content/BroadcastReceiver;

.field private btAddress:Ljava/lang/String;

.field fragmentContainer:Landroid/view/ViewGroup;

.field private installCallback:Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;

.field private isForceUpdateCheck:Z

.field private isFromPlugin:Z

.field private isFromStubByNFC:Z

.field private isFromUpdateNotification:Z

.field private isFromWearableInstaller:Z

.field private launchMode:I

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

.field mDialog:Landroid/app/Dialog;

.field private mIsAfterUpdateCheck:Z

.field private nfc_intent:Landroid/content/Intent;

.field updateListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

.field private updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

.field private wearableListener:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromUpdateNotification:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isForceUpdateCheck:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mIsAfterUpdateCheck:Z

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$6;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->wearableListener:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$7;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->autoSwitchListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private NFCConnectionProcess()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "launch mode = LAUNCHED_FROM_NFC"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->installerConnectionProcess()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->NFCConnectionProcess()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->init2()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Lcom/samsung/android/app/twatchmanager/update/UpdateManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mIsAfterUpdateCheck:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mIsAfterUpdateCheck:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->wearableListener:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isForceUpdateCheck:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->doActionsAfterUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getAllDeviceRegistryData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Ljava/util/List;)Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getLastLaunchDeviceRegistryData(Ljava/util/List;)Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->syncRulesIfNecessary()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->checkDeviceNameAndShowIntroFragment(Ljava/lang/String;)V

    return-void
.end method

.method private checkDeviceNameAndShowIntroFragment(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity with deviceNameFromBTAdaptor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity with deviceModelName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkLastLaunchedDeviceState(Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "checkLastLaunchedDeviceState()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->queryLastLaunchDeviceRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->supportsPairing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    if-nez v2, :cond_2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity already destroyed ignore this call"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getAllDeviceRegistryData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    iget-object v3, v1, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->isPaired(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastLaunchedDeviceID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPairedState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_6

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getAllDeviceRegistryData()Ljava/util/List;

    move-result-object v0

    :cond_3
    new-instance v2, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v2}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-static {p0, v1, v6}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->updateDeviceRegistryConnectionState(Landroid/content/Context;Ljava/lang/String;I)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    iget v2, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->isConnected:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") will be lastLaunchedDevice..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateDeviceLastLaunchRegistryData(Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "There is no connected device in DB."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "No need to check that model"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private checkLaunchFromStub()Z
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchFromStub, isFromStubByNFC ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and isFromWearableInstaller ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->sendLogging()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->doPairing(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchFromStub, res ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doActionsAfterUpdate()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->checkLaunchFromStub()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v2, "classname"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v2, "classname"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doActionsAfterUpdate, classname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->isFirstLaunchAfterUHMUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromPlugin:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v2, "bt_addr"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v3, "launch_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v3, "launch_mode"

    iget v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$5;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->turnOnBT(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->startPlugin()V

    goto/16 :goto_0
.end method

.method private doPairing(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPairing ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$12;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->turnOnBT(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Z)V

    return-void
.end method

.method private getAllDeviceRegistryData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "getAllDeviceRegistryData()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->allDeviceDataList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->queryAllDeviceRegistryData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->allDeviceDataList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->allDeviceDataList:Ljava/util/List;

    return-object v0
.end method

.method private getCurrentFragment()Landroid/app/Fragment;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentFragment() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLastLaunchDeviceRegistryData(Ljava/util/List;)Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;",
            ">;)",
            "Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    iget v2, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->lastLaunch:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "UHM init()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.uhm.action.AUTO_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->autoSwitchListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->init2()V

    goto :goto_0
.end method

.method private init2()V
    .locals 5

    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isGuiRunning:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v1, "connected_wearable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v1}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v3, "Launching from quick panel, update LastLaunchedRegistry and send broadcast."

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v3, "launch mode = LAUNCHED_FROM_QUICK_PANEL"

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3ec

    iput v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateDeviceLastLaunchRegistryData(Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.uhm.action.STEALTH_FINISH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc::init() isFromWearableInstaller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc::init() isFromStubByNFC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc::init() isFromSamsungApps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc::init() isFromUpdateNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromUpdateNotification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "launch mode = LAUNCHED_FROM_BT_SETTING"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v1, "BT_ADD_FROM_STUB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setDeviceAddress(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btAddress(BT_ADD_FROM_STUB) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$8;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    sget-object v1, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->INITIAL_PERMISSION:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->checkLastLaunchedDeviceState(Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    if-eqz v1, :cond_3

    const/16 v0, 0x3ed

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v1, "bt_addr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setDeviceAddress(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->startUpdateChecking()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launched from samsungapps after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->startLastLaunchedPlugin(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->finish()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromUpdateNotification:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "launched from update notification"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->removeIsNotifiedFlag(Landroid/content/Context;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method private initCheckNetwork()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromPlugin:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromUpdateNotification:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Notification procedure is skipped."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->init()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$NetworkListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->show()V

    goto :goto_0
.end method

.method private installerConnectionProcess()V
    .locals 7

    const/4 v4, 0x0

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installerConnectionProcess starts ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installerConnectionProcess, simpleDeviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isDeviceAlreadyConnected(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAlreadyConnected = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already connected. Do nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getSupportPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getPluginPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->verifyPluginActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->startPluginActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->checkDeviceNameAndShowIntroFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isFromStubByNFC(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "isFromPlugin"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "bt_addr"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFromNFC"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromStubByNFC() return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isFromWearableInstaller(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "MODEL_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BT_ADD_FROM_STUB"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromWearableInstaller() has(BT_ADD_FROM_STUB) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", has(MODEL_NAME) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CALLER_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromWearableInstaller() has(CALLER_PACKAGE) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CALLER_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isFromWearableInstaller() return  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGuiRunning()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGuiRunning() return :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isGuiRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isGuiRunning:Z

    return v0
.end method

.method private launchVerifiedPluginActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "launchVerifiedPluginActivity()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    sget-object v1, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->INITIAL_PERMISSION:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V

    return-void
.end method

.method private printDB()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "printDB starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getAllDeviceRegistryData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "Print all device data:"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Print all device data ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "printDB ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendLogging()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "send intent for statistics G019"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "G019"

    const-string v1, "Phone BT list"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setAppBadge()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "badge_count_package_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "badge_count_class_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppBadge() packageName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppBadge() className :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "badge_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDeviceAddress(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->syncRulesIfNecessary()V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;-><init>(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/easypairing/BluetoothUtil;->getBRdevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceAddress original ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], converted ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAppPermissionDialog()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCustomBinaryDialog()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "showCustomBinaryDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {v0, p0, v3, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$10;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private showIntroFragment(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "showIntroFragment()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc::startIntroActivity() bt_addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc::startIntroActivity() DEVICE_MODEL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bt_addr"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEVICE_MODEL"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    :cond_0
    invoke-virtual {p0, v0, v1, p3}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private showMaximumPowerSavingModeDialog()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "showMaximumPowerSavingModeDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {v0, p0, v3, v5, v3}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060025

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f060005

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$11;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startPlugin()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "switching"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->startLastLaunchedPlugin(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private syncRulesIfNecessary()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "deviceInfo is not available, need to parse xml"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->syncGearInfoSynchronously()Z

    :cond_0
    return-void
.end method

.method private updateDeviceLastLaunchRegistryData(Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->updateDeviceLastLaunchRegistryData(Ljava/lang/String;Landroid/content/Context;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->allDeviceDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLaunchMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], resultCode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], intent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System Installation Intent result result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->installCallback:Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->installCallback:Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;->onInstallationResult(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "installCallback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged, currentFragment ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    if-eqz v1, :cond_1

    invoke-direct {p0, v5, v5, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/LoadingGearFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v5, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UHM onCreate() Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UHM onCreate() Bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.spv.ACTION_VIEW_DETAIL"

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->requestWindowFeature(I)Z

    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setTheme(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showAppPermissionDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "density ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], densityDpi ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], heightPixels ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], widthPixels ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setRequestedOrientation(I)V

    :cond_1
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDeviceWithCustomBinary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showCustomBinaryDialog()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isMaximumPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showMaximumPowerSavingModeDialog()V

    goto :goto_0

    :cond_4
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->fragmentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->printDB()V

    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->setStatusBarOpenByNotification(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v3, "isFromPlugin"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromPlugin:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v3, "isFromUpdateNotification"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromUpdateNotification:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v3, "switching"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->nfc_intent:Landroid/content/Intent;

    const-string v4, "force_update"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isForceUpdateCheck:Z

    sget-object v3, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFromPlugin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromPlugin:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isViaConnectActivity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isForceUpdateCheck = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isForceUpdateCheck:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    new-instance v3, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;

    invoke-direct {v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;-><init>()V

    iget-boolean v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isForceUpdateCheck:Z

    iput-boolean v4, v3, Lcom/samsung/android/app/twatchmanager/update/UpdateConf;->mForceUpdate:Z

    new-instance v4, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    iget-boolean v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromPlugin:Z

    if-nez v6, :cond_5

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isLocalInstallation()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v2

    :goto_1
    invoke-direct {v4, p0, v5, v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;ZLcom/samsung/android/app/twatchmanager/update/UpdateConf;)V

    iput-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->initCheckNetwork()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setAppBadge()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() ends."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "UHM onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isGuiRunning:Z

    const-string v0, "-UHM destroyed-"

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/Toaster;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateManager:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/Log;->saveLog()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent() isFromStubByNFC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isFromWearableInstaller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentFragment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromWearableInstaller:Z

    if-eqz v1, :cond_2

    :cond_0
    instance-of v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromStubByNFC:Z

    if-eqz v0, :cond_3

    const-string v0, "bt_addr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setDeviceAddress(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->sendLogging()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->btAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->doPairing(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "BT_ADD_FROM_STUB"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setDeviceAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onUpdateFragmentFinished()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateFragmentFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->checkLaunchFromStub()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->startPlugin()V

    :cond_0
    return-void
.end method

.method public setInstallationCallback(Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->installCallback:Lcom/samsung/android/app/twatchmanager/manager/InstallationCallback;

    return-void
.end method

.method public setLaunchMode(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLaunchMode() launchMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    const/16 v1, 0x3ee

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, " setLaunchMode() unable to modify launch mode"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    goto :goto_0
.end method

.method protected startLastLaunchedPlugin(ZLjava/lang/String;)Z
    .locals 9

    const/16 v6, 0x3f0

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "startLastLaunchedPlugin called"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getAllDeviceRegistryData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getLastLaunchDeviceRegistryData(Ljava/util/List;)Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_0

    iget v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->supportsPairing:I

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    iget-object v2, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->isPaired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "not necessary to check that model for pairing status"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    const-string v2, "com.samsung.android.gear1plugin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gear1Tizen BTadapter Name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GALAXY Gear"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->hasInstallPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isSupportPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getContainerPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0, v2, v8}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v8

    :goto_2
    if-nez v0, :cond_5

    iget-object v1, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Abnormal case. Seems Plugin disabled while launching [Non-Samsung device]"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    :cond_5
    iget-object v1, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isContainerPackageUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Non-Samsung device], isUpdateCase ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const/16 v2, 0x3ef

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_a

    :cond_7
    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    iget-object v1, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    move v1, v8

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    move v0, v8

    goto :goto_2

    :cond_a
    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->verifyPluginActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v2, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    iget-object v3, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    move-object v0, p0

    move-object v1, p0

    move-object v5, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchVerifiedPluginActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_b
    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isSupportPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mDeviceController:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    iget-object v2, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->isPaired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;-><init>()V

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    invoke-static {p0, v0, v8}, Lcom/samsung/android/app/twatchmanager/contentprovider/RegistryDbManagerWithProvider;->updateDeviceRegistryConnectionState(Landroid/content/Context;Ljava/lang/String;I)I

    :cond_c
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    :cond_d
    invoke-static {p0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->istUHMUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isContainerPackageUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isSupportPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getContainerPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isInstallRequiredExceptionalCase(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Abnormal case. Seems Plugin disabled while launching [Samsung device]"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    iget-object v1, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->showIntroFragment(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    goto/16 :goto_1

    :cond_f
    iget-object v0, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->verifyPluginActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->packagename:Ljava/lang/String;

    iget-object v3, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceBtID:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/app/twatchmanager/contentprovider/DeviceRegistryData;->deviceFixedName:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchMode:I

    move-object v0, p0

    move-object v1, p0

    move-object v5, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->launchVerifiedPluginActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move v1, v8

    goto/16 :goto_1

    :cond_10
    move v0, v1

    goto/16 :goto_2

    :cond_11
    move-object v4, v0

    goto/16 :goto_0
.end method

.method updateFragment(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method updateFragment(ILandroid/os/Bundle;Z)V
    .locals 8

    const v7, 0x7f0b0029

    const v3, 0x7f0a0002

    const/4 v6, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFragment() fragmentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forceSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "SetupWizardWelcomeActivity is about to get Destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->fragmentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->fragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;-><init>()V

    move-object v2, v0

    :cond_3
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v0, v4, :cond_6

    if-nez p3, :cond_6

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "same Fragment already shown ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/LoadingGearFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/LoadingGearFragment;-><init>()V

    iput-boolean v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->mIsAfterUpdateCheck:Z

    move-object v2, v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;-><init>()V

    move-object v2, v0

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->isFromPlugin:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "launching device list from plugin"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/ActivityManagerFactory;->get()Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/watchmanager/libinterface/ActivityManagerInterface;->convertFromTranslucent(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_2
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;-><init>()V

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v4, "Exception :: convertFromTranslucent()"

    invoke-static {v2, v4, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v4, "NoSuchMethodError :: convertFromTranslucent()"

    invoke-static {v2, v4, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "launching device list from setup wizard"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;-><init>()V

    move-object v2, v0

    goto/16 :goto_1

    :pswitch_3
    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;-><init>()V

    if-eqz p2, :cond_3

    const-string v0, "from_pick_gear_fragment"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;-><init>()V

    move-object v2, v0

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;-><init>()V

    move-object v2, v0

    goto/16 :goto_1

    :cond_6
    if-eqz p2, :cond_7

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v3, "send data to fragment"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {v0, v2, v7, v1, v6}, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;ILjava/lang/String;Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v3, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v4, "popBackStack()"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {v0, v2, v7, v1}, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->replaceFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;ILjava/lang/String;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
