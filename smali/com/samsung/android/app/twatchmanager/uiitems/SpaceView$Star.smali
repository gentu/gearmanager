.class Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;
.super Ljava/lang/Object;


# static fields
.field static inr:I

.field static random:Ljava/util/Random;


# instance fields
.field STATE_DIEING:I

.field STATE_GLOWING:I

.field alpha:I

.field animationFinished:Z

.field currentStatus:I

.field point:Landroid/graphics/Point;

.field starRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->inr:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_GLOWING:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;ZZ)V
    .locals 3

    const/16 v2, 0xff

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_GLOWING:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    :goto_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->random:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    sget-object v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->random:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->inr:I

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    :goto_1
    return-void

    :cond_0
    iput v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_GLOWING:I

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;
    .locals 4

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;

    invoke-direct {v2}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;-><init>()V

    iput-object v1, v2, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->inr:I

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    return-object v2
.end method

.method private getState()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->starRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->inr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method animate()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0xff

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    sget v1, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->inr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_GLOWING:I

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->animationFinished:Z

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_GLOWING:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    sget v1, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->inr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_GLOWING:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    if-lt v0, v2, :cond_3

    iput v2, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->STATE_DIEING:I

    iput v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->animationFinished:Z

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Star{point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->point:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->alpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->currentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", animationFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$Star;->animationFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
