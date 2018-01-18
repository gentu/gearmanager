.class public Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;
.super Landroid/app/Fragment;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "PermissionFragment"

.field private static final REQUEST_CODE_INITIAL_PERMISSIONS:I = 0x138b

.field private static final TAG:Ljava/lang/String;

.field private static final mPluginList:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPermissions:[Ljava/lang/String;

.field private mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

.field normalPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field settingsPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.gear1module"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.gear2smodule"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.gearfit2plugin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.gearoplugin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPluginList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private finishFragment()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishFragment, mActivity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->removeFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method private static getInstance(Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    iput-object p1, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method private static isPluginInstalled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPluginList:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {p0, v4}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyPermissions starts, activity ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], permissions ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "could not check permissions"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;->doTask()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->isPluginInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p2, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->ADDITIONAL_PERMISSION:[Ljava/lang/String;

    :cond_3
    if-eqz p2, :cond_6

    array-length v5, p2

    move v4, v2

    move v3, v1

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v6, p2, v4

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    sget-object v7, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyPermissions, permission ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] has value ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "], entire granted ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :cond_6
    if-eqz v1, :cond_9

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "verifyPermissions, all permissions are granted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, p2

    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_7

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->getRequestCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->setNeverShow(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;->doTask()V

    :cond_8
    :goto_4
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "verifyPermissions ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-static {p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->getInstance(Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0029

    const-string v3, "PermissionFragment"

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/ActivityUtils;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;ILjava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->setRetainInstance(Z)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, activity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], task ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], permissions ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestPermission(), abnormal input data"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;->doTask()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->finishFragment()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->requestPermission()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    iput-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v2, "onRequestPermissionsResult()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x138b

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_7

    array-length v0, p2

    if-lez v0, :cond_7

    move v0, v1

    move v2, v3

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    sget-object v4, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestPermissionsResult() permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " grant value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v4, p3, v0

    if-nez v4, :cond_0

    aget-object v4, p2, v0

    invoke-static {v4}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->getRequestCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->setNeverShow(IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->getRequestCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->setNeverShow(IZ)V

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;->onFinish()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->finishFragment()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;->doTask()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;->onFinish()V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method requestPermission()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v6, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestPermission()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->getRequestCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->isNeverShowEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mPermissions:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission() settingsPermissions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission() normalPermissions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x138b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->normalPermissions:Ljava/util/ArrayList;

    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->showPermissionSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iput-object v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->settingsPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->finishFragment()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->mTask:Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;->doTask()V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->finishFragment()V

    goto :goto_2
.end method
