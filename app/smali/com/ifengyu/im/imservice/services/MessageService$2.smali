.class Lcom/ifengyu/im/imservice/services/MessageService$2;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/services/MessageService;->initMiSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/services/MessageService;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$b2Token:Ljava/lang/String;

.field final synthetic val$gUid:Ljava/lang/String;

.field final synthetic val$msgCallbackAdapter:Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;

.field final synthetic val$pSkey:Ljava/lang/String;

.field final synthetic val$pid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/services/MessageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$gUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$pSkey:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$b2Token:Ljava/lang/String;

    iput-object p6, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$pid:Ljava/lang/String;

    iput-object p7, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$msgCallbackAdapter:Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg sdk init success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg sdk init failed"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/services/MessageService$2;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public runInBackground()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->access$200(Lcom/ifengyu/im/imservice/services/MessageService;)Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$gUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$pSkey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$b2Token:Ljava/lang/String;

    iget-object v5, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$pid:Ljava/lang/String;

    iget-object v6, p0, Lcom/ifengyu/im/imservice/services/MessageService$2;->val$msgCallbackAdapter:Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;

    invoke-virtual/range {v0 .. v6}, Lcom/mi/mimsgsdk/MsgSdkManager;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService$2;->runInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
