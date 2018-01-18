.class Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getIntentData(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt::Device Name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "printIntentData, device is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive() ACTION_FOUND"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->getIntentData(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive() EXTRA_BOND_STATE state = BOND_BONDING"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive() EXTRA_BOND_STATE state BOND_BONDED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->getIntentData(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;->onPaired(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive() EXTRA_BOND_STATE state BOND_NONE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->getIntentData(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$IPairingListener;->onCancel()V

    goto :goto_0
.end method
