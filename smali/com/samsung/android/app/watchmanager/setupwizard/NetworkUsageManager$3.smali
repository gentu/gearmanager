.class Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDialog :: onClick Cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;)Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$NetworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager;)Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$NetworkListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/NetworkUsageManager$NetworkListener;->onCancel()V

    :cond_0
    return-void
.end method
