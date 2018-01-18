.class Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;

.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonDialog :: Cancel Button pressed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6$2;->this$1:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment$6;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->access$1100(Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;)V

    return-void
.end method
