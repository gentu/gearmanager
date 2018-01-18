.class final Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mBluetoothStateReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;

.field final synthetic val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    iput-object p4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$mBluetoothStateReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->isBTEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$mBluetoothStateReceiver:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->access$1000(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothStateReceiver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$3;->val$mListener:Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;->onStatus(Z)V

    goto :goto_0
.end method
