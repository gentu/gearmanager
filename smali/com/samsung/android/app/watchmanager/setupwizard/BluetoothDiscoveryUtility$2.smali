.class Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncComplete(IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSyncComplete( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->mOnSyncCompleteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
