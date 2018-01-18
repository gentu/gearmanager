.class Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->startAnimationWithDelay()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
