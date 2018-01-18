.class public interface abstract Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onLeScanFinished(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onScanFinished(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)V"
        }
    .end annotation
.end method
