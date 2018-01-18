.class Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IFunctional;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->TAG:Ljava/lang/String;

    const-string v1, "Previous discovery finished. Let\'s initiate a new one."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method
