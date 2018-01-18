.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$SyncGearInterface;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChangedMethod(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyDataSetChangedMethod()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSyncCompleteCall()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSyncCompleteCall()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    return-void
.end method

.method public refreshBluetoothAdaptorStateChanged()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshBluetoothAdaptorStateChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopConnectUI()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopConnectUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
