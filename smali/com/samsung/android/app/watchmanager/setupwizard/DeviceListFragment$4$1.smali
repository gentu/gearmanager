.class Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$401(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Z

    :cond_0
    return-void
.end method
