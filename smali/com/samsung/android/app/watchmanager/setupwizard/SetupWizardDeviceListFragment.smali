.class public Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;
.super Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;


# static fields
.field private static final MINIMUM_MEMORY_STRING:Ljava/lang/String; = "1.5"

.field private static final MODEL_NAME_GEAR_ICON_X:Ljava/lang/String; = "Gear IconX"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private deviceFoundContainer:Landroid/widget/LinearLayout;

.field private deviceListView:Landroid/widget/ListView;

.field private final globalLayoutListner:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicesArrayAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

.field private mGroupName:Ljava/lang/String;

.field private final mIconOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchLayout:Landroid/widget/LinearLayout;

.field private final mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

.field private moreHelp:Landroid/widget/TextView;

.field private noDeviceFoundContainer:Landroid/widget/LinearLayout;

.field private noGearFoundDescriptionTextView:Landroid/widget/TextView;

.field private noGearFoundWarningDescriptionTextView:Landroid/widget/TextView;

.field private previewImage:Landroid/widget/ImageView;

.field private progressCircle:Landroid/widget/ProgressBar;

.field private searchText:Landroid/widget/TextView;

.field private selectTheGearToConnectWarningTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->globalLayoutListner:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mIconOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->startSamsungMembers(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->unregisterGlobalLayoutListner()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDevicesArrayAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->isCurrentGroupDevice(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->refreshPairedDevice()V

    return-void
.end method

.method private isCurrentGroupDevice(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "isCurrentGroupDevice()::mGroupName is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->getSimpleBTName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCurrentGroupDevice()::simpleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mGroupName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGroupDeviceNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentGroupDevice()::name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openBrowser ["

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

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v2, "unable to open the link"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPairedDevice()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "refreshPairedDevice()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->refreshPariedDevice()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    iget-object v4, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->containsAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->isCurrentGroupDevice(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDevicesArrayAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "mPairedDevicesList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startSamsungMembers(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->startSamsungMembersApp()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;->getBrowserURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->openBrowser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSamsungMembersApp()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7g2iz1jlkc"

    const-string v3, "Samsung Gear"

    new-instance v4, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;->getApplicationURI()Ljava/lang/String;

    move-result-object v0

    const-string v4, "voc://view/contactUs"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "packageName"

    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "faqUrl"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterGlobalLayoutListner()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->globalLayoutListner:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v2, " unregisterGlobalLayoutListner() "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected doCreateDeviceListView()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "doCreateDeviceListView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "doCreateDeviceListView() getView() == null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$5;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDevicesArrayAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDevicesArrayAdapter:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->refreshPairedDevice()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->startConnectUI()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mIsSkipDisconnect:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "deviceListView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getSyncGearInterface()Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSyncGearInterface:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mIsBackPressed:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->cancelBTAdapter()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "inside onCreateView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy() starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceListView:Landroid/widget/ListView;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->unregisterGlobalLayoutListner()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy -> disabling CMStateReceiver broadcast receiver"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/receiver/BackupCompleteReceiver;->unregisterReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-super {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v2, "onViewCreated()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "group_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0b0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->previewImage:Landroid/widget/ImageView;

    const v0, 0x7f0b003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noDeviceFoundContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceFoundContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundDescriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundWarningDescriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->selectTheGearToConnectWarningTextView:Landroid/widget/TextView;

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v0, 0x7f0b003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->searchText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->progressCircle:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->moreHelp:Landroid/widget/TextView;

    const-string v0, "com.samsung.android.voc"

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getVersionCode(Ljava/lang/String;)I

    move-result v0

    const v2, 0xa220268

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->moreHelp:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->globalLayoutListner:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->previewImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->setHeaderImageWithRules(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected startConnectUI()V
    .locals 7

    const/16 v2, 0x8

    const/4 v6, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "startConnectUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noDeviceFoundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceFoundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundWarningDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->less1_5GbMemory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "1.5"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->selectTheGearToConnectWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->selectTheGearToConnectWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->progressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->searchText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G021"

    const-string v2, "BT device list"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->selectTheGearToConnectWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected stopConnectUI()V
    .locals 8

    const v4, 0x7f060027

    const v3, 0x7f060028

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "stopConnectUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceList size is:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->searchText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->progressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->unregisterReceiver()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->TAG:Ljava/lang/String;

    const-string v1, "mDeviceList size is 0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->searchText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->selectTheGearToConnectWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noDeviceFoundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->deviceFoundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->moreHelp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->moreHelp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    const-string v1, ""

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Gear IconX"

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->less1_5GbMemory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "1.5"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundWarningDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundWarningDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getGearInfo(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->connectAsAudio:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Gear IconX"

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->noGearFoundWarningDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
