.class Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/app/twatchmanager/model/InstallPack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/twatchmanager/model/InstallPack;Lcom/samsung/android/app/twatchmanager/model/InstallPack;)I
    .locals 2

    iget-boolean v0, p1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->reinstall:Z

    iget-boolean v1, p2, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->reinstall:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->reinstall:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    check-cast p2, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/twatchmanager/util/InstallationAsyncTask$1;->compare(Lcom/samsung/android/app/twatchmanager/model/InstallPack;Lcom/samsung/android/app/twatchmanager/model/InstallPack;)I

    move-result v0

    return v0
.end method
