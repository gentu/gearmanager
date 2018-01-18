.class Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inside mIconOnClickListener"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "513"

    const-string v1, "5107"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/SALogUtil;->insertSaLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$302(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->showDialogNewGear()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->createDeviceListView()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->refreshDeviceAddressList()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->startConnectUI()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$4;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
