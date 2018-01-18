.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/sothree/slidinguppanel/e;

.field private static final c:[I


# instance fields
.field private A:Z

.field private B:F

.field private C:F

.field private D:F

.field private E:Z

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sothree/slidinguppanel/d;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/view/View$OnClickListener;

.field private final H:Lcom/sothree/slidinguppanel/f;

.field private I:Z

.field private final J:Landroid/graphics/Rect;

.field private d:I

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/view/View;

.field private o:I

.field private p:Landroid/view/View;

.field private q:I

.field private r:Lcom/sothree/slidinguppanel/a;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Lcom/sothree/slidinguppanel/e;

.field private v:Lcom/sothree/slidinguppanel/e;

.field private w:F

.field private x:I

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:Ljava/lang/String;

    sget-object v0, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Lcom/sothree/slidinguppanel/e;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x190

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Landroid/graphics/Paint;

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    iput-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Z

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    new-instance v0, Lcom/sothree/slidinguppanel/a;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/a;-><init>()V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Lcom/sothree/slidinguppanel/a;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Lcom/sothree/slidinguppanel/e;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Lcom/sothree/slidinguppanel/e;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Lcom/sothree/slidinguppanel/e;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    iput-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_8

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setGravity(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_7

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoPanelHeight:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoShadowHeight:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoParallaxOffset:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoFlingVelocity:I

    const/16 v3, 0x190

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoFadeColor:I

    const/high16 v3, -0x67000000

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoDragView:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoScrollableView:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:I

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoOverlay:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoClipPanel:I

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Z

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoAnchorPoint:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    invoke-static {}, Lcom/sothree/slidinguppanel/e;->values()[Lcom/sothree/slidinguppanel/e;

    move-result-object v0

    sget v3, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoInitialState:I

    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v4}, Lcom/sothree/slidinguppanel/e;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget v0, Lcom/sothree/slidinguppanel/a/c;->SlidingUpPanelLayout_umanoScrollInterpolator:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v5, :cond_7

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    if-ne v3, v5, :cond_2

    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v3, v2

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    :cond_2
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    if-ne v3, v5, :cond_3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    :cond_3
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    if-ne v3, v5, :cond_4

    const/4 v3, 0x0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    :cond_4
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    if-lez v3, :cond_6

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sothree/slidinguppanel/a/b;->above_shadow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {p0, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    new-instance v3, Lcom/sothree/slidinguppanel/c;

    invoke-direct {v3, p0, v1}, Lcom/sothree/slidinguppanel/c;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/b;)V

    invoke-static {p0, v8, v0, v3}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/i;)Lcom/sothree/slidinguppanel/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/f;->a(F)V

    iput-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sothree/slidinguppanel/a/b;->below_shadow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_6
    iput-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method private a(I)F
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)F
    .locals 0

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    return p1
.end method

.method static synthetic a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(I)F

    move-result v0

    return v0
.end method

.method private a(F)I
    .locals 3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/e;)V

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 7

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    new-array v2, v3, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v3, v3, [I

    invoke-virtual {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    aget v4, v3, v1

    add-int/2addr v4, p2

    aget v3, v3, v0

    add-int/2addr v3, p3

    aget v5, v2, v1

    if-lt v4, v5, :cond_1

    aget v5, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    aget v4, v2, v0

    if-lt v3, v4, :cond_1

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    return-object v0
.end method

.method private b(I)V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Lcom/sothree/slidinguppanel/e;

    :cond_0
    sget-object v0, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/e;)V

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(I)F

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    sub-int v2, v1, v2

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int v1, p1, v1

    :goto_0
    iput v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    iget v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v1, v2, :cond_1

    iput v4, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, p1

    goto :goto_0

    :cond_4
    iget v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    if-nez v1, :cond_2

    iput v4, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(I)V

    return-void
.end method

.method private static b(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/f;
    .locals 1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    return-object v0
.end method

.method static synthetic d(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()V

    return-void
.end method

.method static synthetic e(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    return v0
.end method

.method private e()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getCurrentParallaxOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/view/bo;->b(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    return v0
.end method

.method static synthetic h(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:I

    return v0
.end method

.method private setPanelStateInternal(Lcom/sothree/slidinguppanel/e;)V
    .locals 1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {p0, p0, v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Landroid/view/View;Lcom/sothree/slidinguppanel/e;Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/d;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(I)F

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    invoke-interface {v0, p1, v3}, Lcom/sothree/slidinguppanel/d;->onPanelSlide(Landroid/view/View;F)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method a(Landroid/view/View;Lcom/sothree/slidinguppanel/e;Lcom/sothree/slidinguppanel/e;)V
    .locals 3

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/sothree/slidinguppanel/d;->onPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/e;Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public a(Lcom/sothree/slidinguppanel/d;)V
    .locals 2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->d:Lcom/sothree/slidinguppanel/e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(FI)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d()V

    invoke-static {p0}, Landroid/support/v4/view/bo;->d(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    return-void
.end method

.method public b(Lcom/sothree/slidinguppanel/d;)V
    .locals 2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()V
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int v6, v0, v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-lt v5, v4, :cond_1

    if-lt v7, v2, :cond_1

    if-gt v6, v3, :cond_1

    if-gt v8, v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/f;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/f;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/bo;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method d()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/f;->d()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    if-nez v2, :cond_3

    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:F

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:F

    sub-float v4, v3, v2

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:F

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:Landroid/view/View;

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:F

    float-to-int v3, v3

    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->D:F

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v2, :cond_5

    move v2, v1

    :goto_2
    int-to-float v2, v2

    mul-float/2addr v2, v4

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Lcom/sothree/slidinguppanel/a;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:Landroid/view/View;

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    invoke-virtual {v0, v2, v3}, Lcom/sothree/slidinguppanel/a;->a(Landroid/view/View;Z)I

    move-result v0

    if-lez v0, :cond_6

    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_7
    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    int-to-float v0, v0

    mul-float/2addr v0, v4

    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/f;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/f;->c()V

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_b
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_c
    if-ne v2, v1, :cond_2

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0, v6}, Lcom/sothree/slidinguppanel/f;->a(I)V

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eq v0, p2, :cond_4

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->J:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getAnchorPoint()F
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    return v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    return v0
.end method

.method public getCurrentParallaxOffset()I
    .locals 3

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    return v0
.end method

.method public getPanelState()Lcom/sothree/slidinguppanel/e;
    .locals 1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    return v0
.end method

.method public getSlideOffset()F
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:I

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->E:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/f;->d()V

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->D:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v7}, Lcom/sothree/slidinguppanel/f;->b()I

    move-result v7

    packed-switch v2, :pswitch_data_0

    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/f;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Z

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:F

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->D:F

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:Landroid/view/View;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v2}, Lcom/sothree/slidinguppanel/f;->c()V

    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Z

    goto :goto_0

    :pswitch_1
    int-to-float v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_2

    cmpl-float v2, v5, v6

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v2}, Lcom/sothree/slidinguppanel/f;->c()V

    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v2}, Lcom/sothree/slidinguppanel/f;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/MotionEvent;)V

    move v0, v1

    goto :goto_0

    :cond_3
    int-to-float v2, v7

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_2

    int-to-float v2, v7

    cmpg-float v2, v5, v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->D:F

    float-to-int v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->G:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->G:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v6

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sothree/slidinguppanel/b;->a:[I

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    :cond_0
    :goto_0
    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_5

    invoke-virtual {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v8, :cond_3

    if-eqz v3, :cond_1

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-eqz v1, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v1

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    :goto_3
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(I)F

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    neg-int v0, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-ne v7, v1, :cond_7

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    invoke-direct {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v1

    :goto_4
    iget-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    if-ne v7, v9, :cond_4

    iget-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    if-nez v9, :cond_4

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:F

    invoke-direct {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v1

    iget-object v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v1, v9

    :cond_4
    add-int/2addr v8, v1

    iget v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v7, v0, v1, v9, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c()V

    :cond_6
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()V

    iput-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    return-void

    :cond_7
    move v1, v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v8

    const/4 v0, 0x2

    if-eq v8, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sothree/slidinguppanel/e;->d:Lcom/sothree/slidinguppanel/e;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    :cond_4
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v8, :cond_d

    invoke-virtual {p0, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    if-nez v5, :cond_6

    :cond_5
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:Landroid/view/View;

    if-ne v9, v1, :cond_7

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v3, Lcom/sothree/slidinguppanel/e;->d:Lcom/sothree/slidinguppanel/e;

    if-eq v1, v3, :cond_f

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    sub-int v1, v2, v1

    :goto_2
    iget v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v10

    sub-int v3, v4, v3

    move v12, v3

    move v3, v1

    move v1, v12

    :goto_3
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_8

    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_a

    const/high16 v0, -0x80000000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_5
    invoke-virtual {v9, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-ne v9, v0, :cond_5

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:I

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-ne v9, v1, :cond_e

    iget v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    sub-int v1, v2, v1

    move v3, v1

    move v1, v4

    goto :goto_3

    :cond_8
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :cond_9
    iget v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :cond_a
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->a:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->a:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    int-to-float v3, v3

    iget v0, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->a:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    :cond_b
    :goto_6
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_5

    :cond_c
    iget v10, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    iget v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    goto :goto_6

    :cond_d
    invoke-virtual {p0, v6, v7}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    return-void

    :cond_e
    move v1, v4

    move v3, v2

    goto :goto_3

    :cond_f
    move v1, v2

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "sliding_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/e;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Lcom/sothree/slidinguppanel/e;

    :goto_0
    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "superState"

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "sliding_state"

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v3, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Lcom/sothree/slidinguppanel/e;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isTouchEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MotionEvent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setTouchEnabled(Z)V

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getSlideOffset()F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    sget-object v1, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->H:Lcom/sothree/slidinguppanel/f;

    invoke-virtual {v1, p1}, Lcom/sothree/slidinguppanel/f;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnchorPoint(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setClipPanel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:Z

    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:I

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method public setDragView(I)V
    .locals 1

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:I

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:Landroid/view/View;

    return-void
.end method

.method public setFadeOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->G:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    const/16 v1, 0x50

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinFlingVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:I

    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Z

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelHeight()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/e;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b()V

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    goto :goto_0
.end method

.method public setPanelState(Lcom/sothree/slidinguppanel/e;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Panel state cannot be null or DRAGGING."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    if-ne v0, v1, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:Lcom/sothree/slidinguppanel/e;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->d:Lcom/sothree/slidinguppanel/e;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_6
    sget-object v0, Lcom/sothree/slidinguppanel/b;->a:[I

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:F

    invoke-virtual {p0, v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(F)I

    move-result v1

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    :goto_1
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(I)F

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(FI)Z

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:I

    neg-int v0, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setParallaxOffset(I)V
    .locals 1

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:I

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:Landroid/view/View;

    return-void
.end method

.method public setScrollableViewHelper(Lcom/sothree/slidinguppanel/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:Lcom/sothree/slidinguppanel/a;

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 1

    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:I

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->I:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:Z

    return-void
.end method
