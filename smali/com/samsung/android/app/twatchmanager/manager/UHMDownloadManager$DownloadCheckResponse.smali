.class Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;
.super Ljava/lang/Object;


# instance fields
.field final appId:Ljava/lang/String;

.field final contentSize:J

.field final downloadURL:Ljava/lang/String;

.field final resultCode:Ljava/lang/String;

.field final signature:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->resultCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->downloadURL:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->signature:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->contentSize:J

    iput p7, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->versionCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;

    iget-object v0, p1, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->downloadURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signature exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->signature:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$DownloadCheckResponse;->contentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
