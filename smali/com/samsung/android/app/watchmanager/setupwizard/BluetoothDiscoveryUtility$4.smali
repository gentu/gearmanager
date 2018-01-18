.class final Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

.field final synthetic val$mBluetoothStateReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;

.field final synthetic val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    iput-object p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$mBluetoothStateReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->isBTEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;->onStatus(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$4;->val$mBluetoothStateReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;->cleanUp()V

    return-void
.end method
