.class Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

.field final synthetic val$application:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    iput-boolean p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;->val$application:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnClick Contact us"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    iget-boolean v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;->val$application:Z

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;Z)V

    return-void
.end method
