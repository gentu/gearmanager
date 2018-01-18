.class Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDbObserver :: onChange, selfChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
