.class Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->isBTEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$2;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->turnOnBT(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Z)V

    :cond_0
    return-void
.end method
