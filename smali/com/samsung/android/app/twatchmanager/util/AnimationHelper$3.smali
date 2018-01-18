.class Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

.field final synthetic val$arrowAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$3;->val$arrowAnimation:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationEnd> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$3;->val$arrowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$3;->val$arrowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method
