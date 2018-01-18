.class public abstract Landroid/support/v7/widget/ao;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/support/v7/widget/aq;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ap;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ao;->a:Landroid/support/v7/widget/aq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->b:Ljava/util/ArrayList;

    iput-wide v2, p0, Landroid/support/v7/widget/ao;->c:J

    iput-wide v2, p0, Landroid/support/v7/widget/ao;->d:J

    iput-wide v4, p0, Landroid/support/v7/widget/ao;->e:J

    iput-wide v4, p0, Landroid/support/v7/widget/ao;->f:J

    return-void
.end method

.method static d(Landroid/support/v7/widget/bj;)I
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Landroid/support/v7/widget/bj;->access$6500(Landroid/support/v7/widget/bj;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->getOldPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->getAdapterPosition()I

    move-result v2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/bg;Landroid/support/v7/widget/bj;)Landroid/support/v7/widget/ar;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/support/v7/widget/ar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/bj;)Landroid/support/v7/widget/ar;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/bg;Landroid/support/v7/widget/bj;ILjava/util/List;)Landroid/support/v7/widget/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/bg;",
            "Landroid/support/v7/widget/bj;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/ar;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()Landroid/support/v7/widget/ar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/bj;)Landroid/support/v7/widget/ar;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/aq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ao;->a:Landroid/support/v7/widget/aq;

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)Z
.end method

.method public a(Landroid/support/v7/widget/bj;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/bj;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->g(Landroid/support/v7/widget/bj;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/v7/widget/bj;)V
.end method

.method public abstract c(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)Z
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ao;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ao;->c:J

    return-wide v0
.end method

.method public final e(Landroid/support/v7/widget/bj;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->f(Landroid/support/v7/widget/bj;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->a:Landroid/support/v7/widget/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->a:Landroid/support/v7/widget/aq;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/bj;)V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ao;->d:J

    return-wide v0
.end method

.method public f(Landroid/support/v7/widget/bj;)V
    .locals 0

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/ao;->f:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/bj;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    invoke-interface {v0}, Landroid/support/v7/widget/ap;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public i()Landroid/support/v7/widget/ar;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/ar;

    invoke-direct {v0}, Landroid/support/v7/widget/ar;-><init>()V

    return-object v0
.end method
