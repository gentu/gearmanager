.class Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$4;->this$0:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$4;->this$0:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->arrowA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper$4;->this$0:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->arrowB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
