.class Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

.field final synthetic val$activity:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;->val$activity:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$UpdateHandler$1;->val$activity:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    return-void
.end method
