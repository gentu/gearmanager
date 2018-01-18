.class Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncComplete(IZ)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
