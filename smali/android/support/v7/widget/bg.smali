.class public Landroid/support/v7/widget/bg;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/bg;->b:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/bg;->c:I

    iput v1, p0, Landroid/support/v7/widget/bg;->a:I

    iput v1, p0, Landroid/support/v7/widget/bg;->e:I

    iput v1, p0, Landroid/support/v7/widget/bg;->f:I

    iput-boolean v1, p0, Landroid/support/v7/widget/bg;->g:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/bg;->h:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/bg;->i:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/bg;->j:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/bg;->k:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/bg;->l:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/bg;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bg;->c:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/bg;I)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bg;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bg;->f:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bg;->g:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/bg;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/bg;->c:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/bg;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->j:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bg;->l:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/bg;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/bg;->f:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/bg;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->i:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bg;->h:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/bg;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/bg;->e:I

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/bg;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->k:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bg;->i:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/bg;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/bg;->b:I

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/bg;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->g:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bg;->j:Z

    return p1
.end method

.method static synthetic f(Landroid/support/v7/widget/bg;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->h:Z

    return v0
.end method

.method static synthetic f(Landroid/support/v7/widget/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bg;->k:Z

    return p1
.end method


# virtual methods
.method a(I)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/bg;->c:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/bg;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->h:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->j:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bg;->b:I

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bg;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/bg;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bg;->e:I

    iget v1, p0, Landroid/support/v7/widget/bg;->f:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bg;->a:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bg;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bg;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bg;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bg;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bg;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bg;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bg;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bg;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bg;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
