.class Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry start Device Discovery manager, retry cnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$000(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$200(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$300(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;->access$300(Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager;)Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/twatchmanager/easypairing/DeviceDiscoveryManager$ResponseListener;->onError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
