.class Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mActionBar.getHeight() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment$2;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/DeviceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
