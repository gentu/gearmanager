.class public Lcom/sothree/slidinguppanel/f;
.super Ljava/lang/Object;


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/support/v4/widget/af;

.field private final r:Lcom/sothree/slidinguppanel/i;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sothree/slidinguppanel/g;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/g;-><init>()V

    sput-object v0, Lcom/sothree/slidinguppanel/f;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sothree/slidinguppanel/f;->c:I

    new-instance v0, Lcom/sothree/slidinguppanel/h;

    invoke-direct {v0, p0}, Lcom/sothree/slidinguppanel/h;-><init>(Lcom/sothree/slidinguppanel/f;)V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/f;->w:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sothree/slidinguppanel/f;->o:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sothree/slidinguppanel/f;->b:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sothree/slidinguppanel/f;->m:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sothree/slidinguppanel/f;->n:F

    if-eqz p3, :cond_2

    :goto_0
    invoke-static {p1, p3}, Landroid/support/v4/widget/af;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/af;

    move-result-object v0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    return-void

    :cond_2
    sget-object p3, Lcom/sothree/slidinguppanel/f;->v:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private a(FFF)F
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    move p3, v0

    :cond_0
    :goto_0
    return p3

    :cond_1
    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private a(III)I
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/f;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIII)I
    .locals 8

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/sothree/slidinguppanel/f;->b(III)I

    move-result v2

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/sothree/slidinguppanel/f;->b(III)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v6, v1, v5

    add-int v7, v0, v4

    if-eqz v2, :cond_0

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    :goto_0
    if-eqz v3, :cond_1

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    :goto_1
    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v4, p1}, Lcom/sothree/slidinguppanel/i;->b(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Lcom/sothree/slidinguppanel/f;->a(III)I

    move-result v2

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v4, p1}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Lcom/sothree/slidinguppanel/f;->a(III)I

    move-result v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_1
.end method

.method public static a(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/i;)Lcom/sothree/slidinguppanel/f;
    .locals 3

    invoke-static {p0, p2, p3}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/i;)Lcom/sothree/slidinguppanel/f;

    move-result-object v0

    iget v1, v0, Lcom/sothree/slidinguppanel/f;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/sothree/slidinguppanel/f;->b:I

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/i;)Lcom/sothree/slidinguppanel/f;
    .locals 2

    new-instance v0, Lcom/sothree/slidinguppanel/f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sothree/slidinguppanel/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/i;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/f;->t:Z

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;FF)V

    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/f;->t:Z

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/f;->a(I)V

    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/sothree/slidinguppanel/f;->c(I)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/sothree/slidinguppanel/f;->d(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sothree/slidinguppanel/f;->k:I

    return-void
.end method

.method private a(FFII)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v2, p4}, Lcom/sothree/slidinguppanel/i;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v7

    sub-int v3, p2, v6

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v1}, Landroid/support/v4/widget/af;->h()V

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/f;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/af;->a(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/f;->a(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/i;->b(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v3, p1}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->b:I

    iget v4, p0, Lcom/sothree/slidinguppanel/f;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private b(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(III)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sothree/slidinguppanel/f;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/sothree/slidinguppanel/f;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sothree/slidinguppanel/f;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/sothree/slidinguppanel/f;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v1, v0, p3}, Lcom/sothree/slidinguppanel/i;->b(II)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    aput v2, v0, p1

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sothree/slidinguppanel/f;->k:I

    goto :goto_0
.end method

.method private b(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/sothree/slidinguppanel/i;->b(Landroid/view/View;II)I

    move-result v2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_0
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;II)I

    move-result v3

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    sub-int v4, v2, v0

    sub-int v5, v3, v1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;IIII)V

    :cond_1
    return-void

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private c(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    iput-object v1, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    iput-object v2, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    iput-object v3, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    iput-object v4, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    iput-object v5, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    iput-object v6, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    :cond_2
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-static {p1}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(II)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->o:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->o:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/sothree/slidinguppanel/f;->k:I

    goto :goto_0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/bj;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->n:F

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->m:F

    invoke-direct {p0, v0, v1, v2}, Lcom/sothree/slidinguppanel/f;->a(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/bj;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->n:F

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->m:F

    invoke-direct {p0, v1, v2, v3}, Lcom/sothree/slidinguppanel/f;->a(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sothree/slidinguppanel/f;->a(FF)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/sothree/slidinguppanel/f;->n:F

    return-void
.end method

.method a(I)V
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sothree/slidinguppanel/f;->a:I

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/i;->a(I)V

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    iput p2, p0, Lcom/sothree/slidinguppanel/f;->c:I

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v0, p1, p2}, Lcom/sothree/slidinguppanel/i;->b(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/f;->a(I)V

    return-void
.end method

.method public a(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/f;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/bj;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/bj;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sothree/slidinguppanel/f;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/f;->c()V

    :cond_0
    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v2, v0, :cond_9

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sothree/slidinguppanel/f;->a(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v3, v6, :cond_3

    invoke-virtual {p0, v2, v4}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    :cond_3
    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget v5, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v2, v5

    invoke-virtual {v3, v2, v4}, Lcom/sothree/slidinguppanel/i;->a(II)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-direct {p0, v4, v3, v2}, Lcom/sothree/slidinguppanel/f;->a(FFI)V

    iget v5, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-nez v5, :cond_4

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    aget v3, v3, v2

    iget v4, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget v5, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v3, v5

    invoke-virtual {v4, v3, v2}, Lcom/sothree/slidinguppanel/i;->a(II)V

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v5, v6, :cond_2

    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v3, v2}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_7

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    if-eqz v4, :cond_7

    invoke-static {p1, v2}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    array-length v5, v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    array-length v5, v5

    if-lt v4, v5, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-static {p1, v2}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v2}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    aget v7, v7, v4

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/sothree/slidinguppanel/f;->b(FFI)V

    iget v7, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v7, v0, :cond_8

    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/f;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    aget v7, v7, v4

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    aget v8, v8, v4

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v7, v5, v6}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v7, v4}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sothree/slidinguppanel/f;->b(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/f;->c()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)Z
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-direct {p0, p2, p3, v1, v1}, Lcom/sothree/slidinguppanel/f;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return v7

    :cond_0
    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v0, v9, :cond_6

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->g()Z

    move-result v8

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->b()I

    move-result v2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->c()I

    move-result v3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-nez v8, :cond_1

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setTop(I)V

    move v7, v6

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;IIII)V

    :cond_5
    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->d()I

    move-result v0

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->e()I

    move-result v0

    if-ne v3, v0, :cond_9

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->h()V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->a()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_6

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_2
    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v0, v9, :cond_8

    move v0, v6

    :goto_3
    move v7, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v7}, Lcom/sothree/slidinguppanel/f;->a(I)V

    goto :goto_2

    :cond_8
    move v0, v7

    goto :goto_3

    :cond_9
    move v0, v8

    goto :goto_1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->b:I

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/f;->c()V

    :cond_0
    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0}, Lcom/sothree/slidinguppanel/f;->a(FFI)V

    invoke-virtual {p0, v3, v0}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Lcom/sothree/slidinguppanel/i;->a(II)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/sothree/slidinguppanel/f;->a(FFI)V

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-nez v3, :cond_3

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->h:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Lcom/sothree/slidinguppanel/i;->a(II)V

    goto :goto_0

    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sothree/slidinguppanel/f;->b(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v1, v7, :cond_4

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->f:[F

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->g:[F

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/sothree/slidinguppanel/f;->b(IIII)V

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/f;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    aget v5, v5, v2

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    invoke-direct {p0, v3, v4, v2}, Lcom/sothree/slidinguppanel/f;->b(FFI)V

    iget v5, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v5, v7, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/f;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->d:[F

    aget v5, v5, v2

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sothree/slidinguppanel/f;->e:[F

    aget v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v3, v4}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v5, v2}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v3, v7, :cond_a

    iget v3, p0, Lcom/sothree/slidinguppanel/f;->c:I

    if-ne v2, v3, :cond_a

    invoke-static {p1}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;)I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_d

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    iget v5, p0, Lcom/sothree/slidinguppanel/f;->c:I

    if-ne v4, v5, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/sothree/slidinguppanel/f;->c(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->c:I

    :goto_3
    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/f;->g()V

    :cond_a
    invoke-direct {p0, v2}, Lcom/sothree/slidinguppanel/f;->b(I)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v0, v7, :cond_b

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/f;->g()V

    :cond_b
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/f;->c()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v0, v7, :cond_c

    invoke-direct {p0, v5, v5}, Lcom/sothree/slidinguppanel/f;->a(FF)V

    :cond_c
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/f;->c()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public b(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->c:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v1, p1, p2}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    invoke-virtual {v2, v1}, Lcom/sothree/slidinguppanel/i;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sothree/slidinguppanel/f;->c:I

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/f;->f()V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/f;->l:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/f;->c()V

    iget v0, p0, Lcom/sothree/slidinguppanel/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->b()I

    move-result v4

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->c()I

    move-result v5

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->h()V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->b()I

    move-result v2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->q:Landroid/support/v4/widget/af;

    invoke-virtual {v0}, Landroid/support/v4/widget/af;->c()I

    move-result v3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/f;->r:Lcom/sothree/slidinguppanel/i;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/f;->s:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Lcom/sothree/slidinguppanel/i;->a(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/f;->a(I)V

    return-void
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sothree/slidinguppanel/f;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
