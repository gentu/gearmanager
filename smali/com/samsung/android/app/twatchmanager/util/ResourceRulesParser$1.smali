.class Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/app/twatchmanager/model/GroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/twatchmanager/model/GroupInfo;Lcom/samsung/android/app/twatchmanager/model/GroupInfo;)I
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->displayOrder:Ljava/lang/Integer;

    iget-object v1, p2, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;->displayOrder:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;

    check-cast p2, Lcom/samsung/android/app/twatchmanager/model/GroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/twatchmanager/util/ResourceRulesParser$1;->compare(Lcom/samsung/android/app/twatchmanager/model/GroupInfo;Lcom/samsung/android/app/twatchmanager/model/GroupInfo;)I

    move-result v0

    return v0
.end method
