.class public final enum Lcom/samsung/a/a/a/a/h/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/a/a/a/a/h/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/h/c;

.field public static final enum b:Lcom/samsung/a/a/a/a/h/c;

.field public static final enum c:Lcom/samsung/a/a/a/a/h/c;

.field private static final synthetic f:[Lcom/samsung/a/a/a/a/h/c;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/a/a/a/a/h/c;

    const-string v1, "ONE_DEPTH"

    const-string v2, "\u0002"

    const-string v3, "\u0003"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/a/a/a/a/h/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/h/c;->a:Lcom/samsung/a/a/a/a/h/c;

    new-instance v0, Lcom/samsung/a/a/a/a/h/c;

    const-string v1, "TWO_DEPTH"

    const-string v2, "\u0004"

    const-string v3, "\u0005"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/a/a/a/a/h/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/h/c;->b:Lcom/samsung/a/a/a/a/h/c;

    new-instance v0, Lcom/samsung/a/a/a/a/h/c;

    const-string v1, "THREE_DEPTH"

    const-string v2, "\u0006"

    const-string v3, "\u0007"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/samsung/a/a/a/a/h/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/h/c;->c:Lcom/samsung/a/a/a/a/h/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/a/a/a/a/h/c;

    sget-object v1, Lcom/samsung/a/a/a/a/h/c;->a:Lcom/samsung/a/a/a/a/h/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/a/a/a/a/h/c;->b:Lcom/samsung/a/a/a/a/h/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/a/a/a/a/h/c;->c:Lcom/samsung/a/a/a/a/h/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/a/a/a/a/h/c;->f:[Lcom/samsung/a/a/a/a/h/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/a/a/a/a/h/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/a/a/a/a/h/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/h/c;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/h/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/a/h/c;

    return-object v0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/h/c;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/h/c;->f:[Lcom/samsung/a/a/a/a/h/c;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/h/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/h/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/h/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/h/c;->e:Ljava/lang/String;

    return-object v0
.end method
