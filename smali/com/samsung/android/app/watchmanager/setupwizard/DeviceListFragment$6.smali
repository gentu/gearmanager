.class Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChangedMethod(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;I)V
    .locals 5

    const/4 v3, -0x1

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

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

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adding device in AvailableItemList"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$800(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$900(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$1000(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size of mPairedList is:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The device is there in the paired list at position:: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Removing the device from the list"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$900(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/widget/ListView;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device not present in the list"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onSyncCompleteCall()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inside onSyncCompleteCall()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->createDeviceListView()V

    return-void
.end method

.method public refreshBluetoothAdaptorStateChanged()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() BT is turned on...isTurnedOnBT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-boolean v2, v2, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->isTurnedOnBT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-boolean v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->isTurnedOnBT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mDialogBTOn:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->doOnItemClick()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT Adapter was off when device list launched. getting list of bonded device again"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v1, v1, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->mBluetoothDiscoveryUtility:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->refreshPariedDevice()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$102(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$900(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->doDiscovery()V

    goto :goto_0
.end method

.method public stopConnectUI()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping the Connect UI"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->stopConnectUI()V

    return-void
.end method
