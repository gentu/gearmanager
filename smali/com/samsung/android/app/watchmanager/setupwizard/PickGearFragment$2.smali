.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "making recycler view scrollable"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->setScrollableView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
