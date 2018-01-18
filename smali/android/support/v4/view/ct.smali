.class public final Landroid/support/v4/view/ct;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/cy;

    invoke-direct {v0}, Landroid/support/v4/view/cy;-><init>()V

    sput-object v0, Landroid/support/v4/view/ct;->a:Landroid/support/v4/view/cw;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/cx;

    invoke-direct {v0}, Landroid/support/v4/view/cx;-><init>()V

    sput-object v0, Landroid/support/v4/view/ct;->a:Landroid/support/v4/view/cw;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/cv;

    invoke-direct {v0}, Landroid/support/v4/view/cv;-><init>()V

    sput-object v0, Landroid/support/v4/view/ct;->a:Landroid/support/v4/view/cw;

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/cu;

    invoke-direct {v0}, Landroid/support/v4/view/cu;-><init>()V

    sput-object v0, Landroid/support/v4/view/ct;->a:Landroid/support/v4/view/cw;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/view/cz;

    invoke-direct {v0}, Landroid/support/v4/view/cz;-><init>()V

    sput-object v0, Landroid/support/v4/view/ct;->a:Landroid/support/v4/view/cw;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/ct;->a:Landroid/support/v4/view/cw;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/cw;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
