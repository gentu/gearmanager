.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOperation() start flickering text animation"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    iget-object v1, v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    iget-object v1, v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->statusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    iget-object v2, v2, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->flikeringAnimSet:Landroid/animation/AnimatorSet;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->startFlickeringTextAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;I)V

    return-void
.end method
