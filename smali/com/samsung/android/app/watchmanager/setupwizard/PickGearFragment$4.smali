.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$500(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$002(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Z)Z

    goto :goto_0
.end method
