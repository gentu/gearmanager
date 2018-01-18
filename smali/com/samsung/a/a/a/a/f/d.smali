.class public final enum Lcom/samsung/a/a/a/a/f/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/a/a/a/a/f/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/f/d;

.field public static final enum b:Lcom/samsung/a/a/a/a/f/d;

.field public static final enum c:Lcom/samsung/a/a/a/a/f/d;

.field private static final synthetic d:[Lcom/samsung/a/a/a/a/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/a/a/a/a/f/d;

    const-string v1, "DLC"

    invoke-direct {v0, v1, v2}, Lcom/samsung/a/a/a/a/f/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/d;->a:Lcom/samsung/a/a/a/a/f/d;

    new-instance v0, Lcom/samsung/a/a/a/a/f/d;

    const-string v1, "DLS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/a/a/a/a/f/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/d;->b:Lcom/samsung/a/a/a/a/f/d;

    new-instance v0, Lcom/samsung/a/a/a/a/f/d;

    const-string v1, "INTENT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/a/a/a/a/f/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/d;->c:Lcom/samsung/a/a/a/a/f/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/a/a/a/a/f/d;

    sget-object v1, Lcom/samsung/a/a/a/a/f/d;->a:Lcom/samsung/a/a/a/a/f/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/a/a/a/a/f/d;->b:Lcom/samsung/a/a/a/a/f/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/a/a/a/a/f/d;->c:Lcom/samsung/a/a/a/a/f/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/a/a/a/a/f/d;->d:[Lcom/samsung/a/a/a/a/f/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/f/d;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/f/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/a/f/d;

    return-object v0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/f/d;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/f/d;->d:[Lcom/samsung/a/a/a/a/f/d;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/f/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/f/d;

    return-object v0
.end method
