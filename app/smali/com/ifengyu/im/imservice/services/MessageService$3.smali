.class Lcom/ifengyu/im/imservice/services/MessageService$3;
.super Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/services/MessageService;->initAudio(Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/services/MessageService;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/services/MessageService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService$3;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;-><init>()V

    return-void
.end method


# virtual methods
.method sendAudioMessageToTalkGroup(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/im/imservice/services/MessageService;->sendAudioMessageToTalkGroup(Ljava/lang/String;J)Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method
