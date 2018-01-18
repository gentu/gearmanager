.class Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;
.super Ljava/lang/Object;


# instance fields
.field code:Ljava/lang/String;

.field downloadURI:Ljava/lang/String;

.field id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->code:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->downloadURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateDownloadThread$DownloadUriHolder;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method
