.class final Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->access$200()Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->access$200()Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    :cond_0
    sput-object v1, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->settingsTextView:Landroid/widget/TextView;

    sput-object v1, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->cancelTextView:Landroid/widget/TextView;

    return-void
.end method
