.class final synthetic Lcom/ifengyu/im/imservice/services/MessageService$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService$$Lambda$0;->arg$1:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$$Lambda$0;->arg$1:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->lambda$handleDataSendResponse$0$MessageService(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method
