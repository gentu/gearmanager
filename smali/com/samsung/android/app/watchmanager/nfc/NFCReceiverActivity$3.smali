.class Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$100(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;

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

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$100(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt::Device Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$200(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$400(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$400(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$400(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$600(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$500(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$300(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V

    :cond_1
    return-void
.end method
