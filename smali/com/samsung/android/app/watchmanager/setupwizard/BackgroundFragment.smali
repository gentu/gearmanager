.class public Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/sothree/slidinguppanel/d;


# static fields
.field private static final DURATION:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private helperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPanelState:Lcom/sothree/slidinguppanel/e;

.field private mShowNextHandler:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;

.field prevOffset:F

.field viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    sget-object v0, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mPanelState:Lcom/sothree/slidinguppanel/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->prevOffset:F

    return-void
.end method

.method private addResourceToView(Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getDrawableIdFromFileName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v4, v0, p2}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private cleanUp()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method private getYSlideValue(Ljava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "ySlideValue"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public initBackgroundResources()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isResourceInfoAvailable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBackgroundResources() starts, is Synced : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->cleanUp()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->BACKGROUND:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getImageListByType(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;->attributes:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getYSlideValue(Ljava/util/HashMap;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->addResourceToView(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->startAnimationWithDelay()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mShowNextHandler:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v2, 0x10a0000

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->cleanUp()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->stopAnimation()V

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->prevOffset:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->prevOffset:F

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->animate(F)V

    goto :goto_0
.end method

.method public onPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/e;Lcom/sothree/slidinguppanel/e;)V
    .locals 2

    iput-object p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mPanelState:Lcom/sothree/slidinguppanel/e;

    sget-object v0, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->stopAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->helperList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->animate(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->startAnimationWithDelay()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mPanelState:Lcom/sothree/slidinguppanel/e;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->startAnimationWithDelay()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isResourceInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->initBackgroundResources()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->syncGearInfo(ILcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;)V

    goto :goto_0
.end method

.method public startAnimationWithDelay()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mShowNextHandler:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mShowNextHandler:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;->mShowNextHandler:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment$ShowNextHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
