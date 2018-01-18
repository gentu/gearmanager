.class Landroid/support/v4/widget/y;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ab;

.field final synthetic b:Landroid/support/v4/widget/x;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/x;Landroid/support/v4/widget/ab;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    iput-object p2, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v0, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    iget-boolean v0, v0, Landroid/support/v4/widget/x;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    iget-object v1, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/x;->a(Landroid/support/v4/widget/x;FLandroid/support/v4/widget/ab;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    iget-object v1, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-static {v0, v1}, Landroid/support/v4/widget/x;->a(Landroid/support/v4/widget/x;Landroid/support/v4/widget/ab;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1}, Landroid/support/v4/widget/ab;->g()F

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v2}, Landroid/support/v4/widget/ab;->f()F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v3}, Landroid/support/v4/widget/ab;->k()F

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    iget-object v5, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-static {v4, p1, v5}, Landroid/support/v4/widget/x;->b(Landroid/support/v4/widget/x;FLandroid/support/v4/widget/ab;)V

    cmpg-float v4, p1, v7

    if-gtz v4, :cond_1

    div-float v4, p1, v7

    sub-float v5, v8, v0

    invoke-static {}, Landroid/support/v4/widget/x;->a()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget-object v4, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v4, v2}, Landroid/support/v4/widget/ab;->b(F)V

    :cond_1
    cmpl-float v2, p1, v7

    if-lez v2, :cond_2

    sub-float v0, v8, v0

    sub-float v2, p1, v7

    div-float/2addr v2, v7

    invoke-static {}, Landroid/support/v4/widget/x;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ab;->c(F)V

    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    iget-object v1, p0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ab;->d(F)V

    const/high16 v0, 0x43580000    # 216.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44870000    # 1080.0f

    iget-object v2, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    invoke-static {v2}, Landroid/support/v4/widget/x;->a(Landroid/support/v4/widget/x;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/y;->b:Landroid/support/v4/widget/x;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/x;->c(F)V

    goto :goto_0
.end method
