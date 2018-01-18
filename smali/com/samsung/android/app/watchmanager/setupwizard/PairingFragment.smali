.class public Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static gearListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private OkButton:Landroid/widget/Button;

.field private cancelButton:Landroid/widget/Button;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mEasyPairingListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

.field private mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

.field private mOKButtonContainer:Landroid/widget/LinearLayout;

.field private mPinCodeText:Landroid/widget/TextView;

.field private mPinCodeTitle:Landroid/widget/TextView;

.field private mProgressCircle:Lcom/samsung/android/app/twatchmanager/uiitems/ProgressCircle;

.field private final mReciever:Landroid/content/BroadcastReceiver;

.field private previewImage:Landroid/widget/ImageView;

.field private viFragment:Landroid/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mEasyPairingListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mReciever:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->startDeviceList()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->setOKButtonAsProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->startFragment(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->setButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->setCreatBondView(I)V

    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->OkButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setCreatBondView(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pincode text size px:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mPinCodeText:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mPinCodeText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%06d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mPinCodeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setOKButtonAsProgress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mProgressCircle:Lcom/samsung/android/app/twatchmanager/uiitems/ProgressCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/uiitems/ProgressCircle;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->OkButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mOKButtonContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->cancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCreateBond()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mEasyPairingListener:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->createBond(Ljava/lang/String;)Z

    return-void
.end method

.method private startDeviceList()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private startFragment(I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "from_pairing_screen"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->viFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;

    if-eqz v0, :cond_0

    const-string v2, "vi_animation_state"

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->viFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;->getAnimationState(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->setLaunchMode(I)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside onCreateView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "group_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/GlobalConst;->EXTRA_DEVICE_MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceName:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceName:Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const v0, 0x7f03000b

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0b0039

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->previewImage:Landroid/widget/ImageView;

    const v0, 0x7f0b001f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->cancelButton:Landroid/widget/Button;

    const v0, 0x7f0b0051

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mPinCodeText:Landroid/widget/TextView;

    const v0, 0x7f0b0050

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mPinCodeTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0020

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->OkButton:Landroid/widget/Button;

    const v0, 0x7f0b003c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/uiitems/ProgressCircle;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mProgressCircle:Lcom/samsung/android/app/twatchmanager/uiitems/ProgressCircle;

    const v0, 0x7f0b0052

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mOKButtonContainer:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView()::mDeviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->startCreateBond()V

    invoke-direct {p0, v5}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->setButtonEnable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->OkButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->previewImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->setHeaderImageWithRules(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/vi/VIFactory;->getVIFragment(Ljava/lang/String;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->viFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->viFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b004f

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->viFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    return-object v2

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestory() starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->terminate()V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mLightConnectionManager:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "ConnectionManager was successfully terminated"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "ConnectionManager was already stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairingFragment;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
