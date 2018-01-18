.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->initGearIconList()V

    return-void
.end method
