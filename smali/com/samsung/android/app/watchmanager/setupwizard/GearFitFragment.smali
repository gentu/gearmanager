.class public Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;
.super Landroid/app/Fragment;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "GearFitFragment"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->finishFragment()V

    return-void
.end method

.method public static checkConnection(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkConnection starts, activity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], task ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "could not check connection"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;->doTask()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->getConnectedWearable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wingtip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->getInstance(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;)Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0029

    const-string v3, "GearFitFragment"

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;ILjava/lang/String;)V

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "verifyPermissions ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkConnection, Gear Fit is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;->doTask()V

    goto :goto_1
.end method

.method private finishFragment()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishFragment, mActivity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->removeFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method private static getConnectedWearable(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedWearable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getInstance(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;)Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->setRetainInstance(Z)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, activity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], task ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestPermission(), abnormal input data"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;->doTask()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->finishFragment()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->showDisconnectDialog()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    return-void
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method showDisconnectDialog()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->TAG:Ljava/lang/String;

    const-string v1, "showDisconnectDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->createDialog()V

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelable(Z)V

    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f060004

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f060069

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setMessage(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setOkBtnListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->setCancelBtnListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
