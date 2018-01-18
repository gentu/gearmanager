.class Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

.field final synthetic val$noticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;->val$noticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDialog :: onClick Ok"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;->val$noticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->isCheckedCB()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkDialog :: doNotShow ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$200(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;->val$noticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;)V

    return-void
.end method
