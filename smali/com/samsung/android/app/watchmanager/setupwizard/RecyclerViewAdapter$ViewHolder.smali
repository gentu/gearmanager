.class public Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/bj;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public circleProgress:Landroid/widget/ProgressBar;

.field public image:Landroid/widget/ImageView;

.field public imageTitle:Landroid/widget/TextView;

.field public mUseDownloadedImage:Z

.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/bj;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->imageTitle:Landroid/widget/TextView;

    const v0, 0x7f0b003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->circleProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0b005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->mUseDownloadedImage:Z

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isProgressShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->circleProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;)Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter;)Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->imageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->circleProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->imageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/RecyclerViewAdapter$ViewHolder;->circleProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
