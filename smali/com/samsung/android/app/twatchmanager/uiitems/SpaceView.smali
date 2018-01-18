.class public Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;
.super Landroid/view/View;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field animateStarCount:I

.field count:I

.field delay:I

.field deltaTime:J

.field fps:J

.field fpsOffset:F

.field handler:Landroid/os/Handler;

.field invalidateRunnable:Ljava/lang/Runnable;

.field prevTime:J

.field random:Ljava/util/Random;

.field private restoreState:Z

.field starAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;",
            ">;"
        }
    .end annotation
.end field

.field private starBlinkDuration:I

.field starColor:I

.field starCount:I

.field starFullPaint:Landroid/graphics/Paint;

.field starList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;",
            ">;"
        }
    .end annotation
.end field

.field starPaint:Landroid/graphics/Paint;

.field starShadowPaint:Landroid/graphics/Paint;

.field starShadowRadious:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starBlinkDuration:I

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->prevTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->handler:Landroid/os/Handler;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->delay:I

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starShadowRadious:I

    new-instance v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;-><init>(Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->invalidateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starBlinkDuration:I

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->prevTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->handler:Landroid/os/Handler;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->delay:I

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starShadowRadious:I

    new-instance v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;-><init>(Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starBlinkDuration:I

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->prevTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->handler:Landroid/os/Handler;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->delay:I

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starShadowRadious:I

    new-instance v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;-><init>(Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/R$styleable;->SpaceView:[I

    invoke-virtual {v0, p1, v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->random:Ljava/util/Random;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starFullPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starFullPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starFullPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starFullPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starShadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->animateStarCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starAnimationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAnimationState()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->access$000(Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimationState():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->prevTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->deltaTime:J

    iget-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->deltaTime:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->fps:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->prevTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->count:I

    sget-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->fps:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->animate()V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v0, v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->invalidateRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->delay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->restoreState:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    int-to-double v4, v0

    const-wide v6, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v4, v6

    double-to-int v5, v4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged() starCount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bigStarCount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starCount:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->random:Ljava/util/Random;

    invoke-virtual {v4, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->random:Ljava/util/Random;

    invoke-virtual {v6, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    new-instance v7, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    if-ge v0, v5, :cond_0

    move v4, v3

    :goto_1
    invoke-direct {v7, v8, v2, v4}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;-><init>(Landroid/graphics/Point;ZZ)V

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreState() length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->starList:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->getInstance(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->restoreState:Z

    :cond_1
    return-void
.end method
