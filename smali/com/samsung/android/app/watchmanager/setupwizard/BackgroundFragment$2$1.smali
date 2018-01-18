.class Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2$1;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->initBackgroundResources()V

    return-void
.end method
