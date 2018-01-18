.class public final enum Lcom/sothree/slidinguppanel/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sothree/slidinguppanel/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sothree/slidinguppanel/e;

.field public static final enum b:Lcom/sothree/slidinguppanel/e;

.field public static final enum c:Lcom/sothree/slidinguppanel/e;

.field public static final enum d:Lcom/sothree/slidinguppanel/e;

.field public static final enum e:Lcom/sothree/slidinguppanel/e;

.field private static final synthetic f:[Lcom/sothree/slidinguppanel/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sothree/slidinguppanel/e;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/sothree/slidinguppanel/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    new-instance v0, Lcom/sothree/slidinguppanel/e;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/sothree/slidinguppanel/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    new-instance v0, Lcom/sothree/slidinguppanel/e;

    const-string v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/sothree/slidinguppanel/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/e;->c:Lcom/sothree/slidinguppanel/e;

    new-instance v0, Lcom/sothree/slidinguppanel/e;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/sothree/slidinguppanel/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/e;->d:Lcom/sothree/slidinguppanel/e;

    new-instance v0, Lcom/sothree/slidinguppanel/e;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v6}, Lcom/sothree/slidinguppanel/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sothree/slidinguppanel/e;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sothree/slidinguppanel/e;->c:Lcom/sothree/slidinguppanel/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sothree/slidinguppanel/e;->d:Lcom/sothree/slidinguppanel/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sothree/slidinguppanel/e;->e:Lcom/sothree/slidinguppanel/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sothree/slidinguppanel/e;->f:[Lcom/sothree/slidinguppanel/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sothree/slidinguppanel/e;
    .locals 1

    const-class v0, Lcom/sothree/slidinguppanel/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/e;

    return-object v0
.end method

.method public static values()[Lcom/sothree/slidinguppanel/e;
    .locals 1

    sget-object v0, Lcom/sothree/slidinguppanel/e;->f:[Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v0}, [Lcom/sothree/slidinguppanel/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sothree/slidinguppanel/e;

    return-object v0
.end method
