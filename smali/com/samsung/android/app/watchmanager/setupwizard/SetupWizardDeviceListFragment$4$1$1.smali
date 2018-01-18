.class Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;


# instance fields
.field final synthetic this$2:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1$1;->this$2:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1$1;->this$2:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
