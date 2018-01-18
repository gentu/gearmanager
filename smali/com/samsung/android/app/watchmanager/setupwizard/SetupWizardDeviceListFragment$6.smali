.class Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChangedMethod(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;I)V
    .locals 6

    const/4 v3, -0x1

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION TO BE DONE VALUE:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v3

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The device is there in the paired list at position:: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Removing the device from the list"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device not present in the list"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public onSyncCompleteCall()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inside onSyncCompleteCall()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->createDeviceListView()V

    return-void
.end method

.method public refreshBluetoothAdaptorStateChanged()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() BT is turned on...isTurnedOnBT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    iget-boolean v2, v2, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->isTurnedOnBT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    iget-boolean v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->isTurnedOnBT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->doOnItemClick()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->access$800(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->doDiscovery()V

    goto :goto_0
.end method

.method public stopConnectUI()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardDeviceListFragment;->stopConnectUI()V

    return-void
.end method
