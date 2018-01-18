.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
