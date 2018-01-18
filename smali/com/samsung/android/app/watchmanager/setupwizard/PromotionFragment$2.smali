.class Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/e;)V

    return-void
.end method
