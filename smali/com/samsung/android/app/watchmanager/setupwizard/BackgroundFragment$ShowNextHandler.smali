.class Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method
