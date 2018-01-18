.class Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Landroid/widget/AdapterView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-static {v4}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$500(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-static {v0, v6}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$202(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Landroid/widget/AdapterView;)Landroid/widget/AdapterView;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    invoke-static {v0, v6}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$302(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$402(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;I)I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$502(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;J)J

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$5;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->access$1102(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Z)Z

    return-void
.end method
