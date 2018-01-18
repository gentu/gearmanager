.class Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$202(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->connectHFP(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;->access$202(Lcom/samsung/android/app/watchmanager/setupwizard/WearableDeviceController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    return-void
.end method
