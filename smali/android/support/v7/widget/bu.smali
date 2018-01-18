.class Landroid/support/v7/widget/bu;
.super Ljava/lang/Object;


# static fields
.field static d:Landroid/support/v4/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/n",
            "<",
            "Landroid/support/v7/widget/bu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/ar;

.field c:Landroid/support/v7/widget/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/c/o;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/c/o;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/c/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroid/support/v7/widget/bu;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/c/n;

    invoke-interface {v0}, Landroid/support/v4/c/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bu;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bu;

    invoke-direct {v0}, Landroid/support/v7/widget/bu;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroid/support/v7/widget/bu;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bu;->a:I

    iput-object v1, p0, Landroid/support/v7/widget/bu;->b:Landroid/support/v7/widget/ar;

    iput-object v1, p0, Landroid/support/v7/widget/bu;->c:Landroid/support/v7/widget/ar;

    sget-object v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/c/n;

    invoke-interface {v0, p0}, Landroid/support/v4/c/n;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method static b()V
    .locals 1

    :cond_0
    sget-object v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/c/n;

    invoke-interface {v0}, Landroid/support/v4/c/n;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
