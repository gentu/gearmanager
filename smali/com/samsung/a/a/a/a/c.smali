.class Lcom/samsung/a/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/i;


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/a/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/b;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/c;->b:Lcom/samsung/a/a/a/a/b;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/c;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/a/a/a/a/c;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_errorlog_agree"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
