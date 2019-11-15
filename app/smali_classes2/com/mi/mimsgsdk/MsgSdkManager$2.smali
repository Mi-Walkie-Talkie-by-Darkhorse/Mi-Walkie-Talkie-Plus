.class Lcom/mi/mimsgsdk/MsgSdkManager$2;
.super Ljava/lang/Object;
.source "MsgSdkManager.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/MsgSdkManager;->sendMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

.field final synthetic val$channel:I

.field final synthetic val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/service/aidl/MiMessage;II)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iput-object p2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iput p3, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$channel:I

    iput p4, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/MsgSdkManager$2;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v0, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$channel:I

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v3, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v0, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message.body is instance of VideoBody "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget-object v2, v2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    instance-of v2, v2, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$channel:I

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v3, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$600(Lcom/mi/mimsgsdk/MsgSdkManager;ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$channel:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-virtual {v0, v1, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-virtual {v0, v1, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-virtual {v0, v1, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$2;->val$timeout:I

    invoke-virtual {v0, v1, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
