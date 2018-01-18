.class Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->startArrowAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
