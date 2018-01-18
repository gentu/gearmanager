.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->val$status:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$4;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_0
        0x2c9 -> :sswitch_0
        0x2cb -> :sswitch_0
    .end sparse-switch
.end method
