.class public Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;
.super Landroid/support/v7/widget/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/ak",
        "<",
        "Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;

.field private mHolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/ak;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mHolderList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;)Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mClickListener:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getHolder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mHolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/bj;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->onBindViewHolder(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;

    iget-object v1, p1, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->imageTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;->getImageInfo()Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder() image info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mHolderList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mHolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getDrawableIdFromFileName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder() resId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$ImageInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->mUseDownloadedImage:Z

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/bj;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setClickListener(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->mClickListener:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/ImageItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->data:Ljava/util/ArrayList;

    return-void
.end method
