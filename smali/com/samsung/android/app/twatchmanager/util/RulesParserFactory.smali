.class public Lcom/samsung/android/app/twatchmanager/util/RulesParserFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParser(I)Lcom/samsung/android/app/twatchmanager/util/IRulesParser;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;-><init>(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
