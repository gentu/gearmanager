.class Lcom/samsung/a/a/a/a/f/b/c;
.super Lcom/samsung/a/a/a/a/c/a;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/a/a/a/a/f/b/b;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/f/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/f/b/c;->b:Lcom/samsung/a/a/a/a/f/b/b;

    iput p2, p0, Lcom/samsung/a/a/a/a/f/b/c;->a:I

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/b/c;->b:Lcom/samsung/a/a/a/a/f/b/b;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/f/b/b;->a(Lcom/samsung/a/a/a/a/f/b/b;)Lcom/samsung/a/a/a/a/f/c/a;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, ""

    invoke-virtual {v0, v2, v3, v1, p3}, Lcom/samsung/a/a/a/a/f/c/a;->a(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/b/c;->b:Lcom/samsung/a/a/a/a/f/b/b;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/f/b/b;->b(Lcom/samsung/a/a/a/a/f/b/b;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/a/a/a/a/f/b/c;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/a/a/a/a/d/b;->b(Landroid/content/Context;II)V

    return-void
.end method
