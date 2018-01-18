.class Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;->this$0:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView$1;->this$0:Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/uiitems/SpaceView;->invalidate()V

    return-void
.end method
