.class Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$100(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no FOUND Device. address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$200(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$300(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V

    return-void
.end method
