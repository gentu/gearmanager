.class Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel Download"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$200(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/FileManager;->makeTempOrRestoreInternalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$402(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setDownloadPath(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling interrupt"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$700(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread;->interrupt()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Empty download folder for UHM update."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
