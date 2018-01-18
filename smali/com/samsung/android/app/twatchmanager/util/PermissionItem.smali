.class public Lcom/samsung/android/app/twatchmanager/util/PermissionItem;
.super Ljava/lang/Object;


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;->image:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;->text:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;

    iget-object v1, p1, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionItem;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
