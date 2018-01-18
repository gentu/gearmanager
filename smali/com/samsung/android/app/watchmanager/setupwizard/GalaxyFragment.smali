.class public Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/VIAnimationInterface;


# static fields
.field private static final SPACE_VIEW_STATE:Ljava/lang/String; = "space_view_state"

.field private static final STATE_TIMESTAMP:Ljava/lang/String; = "state_timestamp"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field spaceView:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

.field stateBundle:Landroid/os/Bundle;

.field stateTimeStamp:J

.field valueRotationA:Landroid/animation/ValueAnimator;

.field valueRotationB:Landroid/animation/ValueAnimator;

.field valueRotationC:Landroid/animation/ValueAnimator;

.field valueRotationD:Landroid/animation/ValueAnimator;

.field valueRotationE:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private restoreAnimationState(Landroid/animation/ValueAnimator;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[restoreAnimationState() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateTimeStamp:J

    sub-long/2addr v2, v4

    sget-object v4, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[restoreAnimationState() Correction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimationState(Z)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const-string v1, "valueRotationA"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    const-string v1, "valueRotationB"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    const-string v1, "valueRotationC"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    const-string v1, "valueRotationD"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    const-string v1, "valueRotationE"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    const-string v1, "state_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p1, :cond_5

    const-string v1, "space_view_state"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->spaceView:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    invoke-virtual {v2}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->getAnimationState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stateBundle :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    const-string v1, "state_timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateTimeStamp:J

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030010

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->spaceView:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->stateBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->spaceView:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "space_view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->restoreState(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0b0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0067

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b0068

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b0069

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    const-wide/32 v6, 0x23280

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    const-string v5, "valueRotationA"

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->restoreAnimationState(Landroid/animation/ValueAnimator;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    const-wide/32 v6, 0x23280

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    const-string v1, "valueRotationB"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->restoreAnimationState(Landroid/animation/ValueAnimator;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    const-wide/32 v6, 0x11940

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    const-string v1, "valueRotationC"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->restoreAnimationState(Landroid/animation/ValueAnimator;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x8ca0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    const-string v1, "valueRotationD"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->restoreAnimationState(Landroid/animation/ValueAnimator;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    const-string v1, "valueRotationE"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->restoreAnimationState(Landroid/animation/ValueAnimator;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationA:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationB:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationC:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationD:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GalaxyFragment;->valueRotationE:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
