.class public Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;
.super Ljava/lang/Object;


# instance fields
.field private imageInfo:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->imageInfo:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageInfo()Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->imageInfo:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImageInfo(Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->imageInfo:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageItem{imageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->imageInfo:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
