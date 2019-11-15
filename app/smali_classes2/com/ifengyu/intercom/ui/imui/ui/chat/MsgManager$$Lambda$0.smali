.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/lang/String;

.field private final arg$6:Lcom/mi/mimsgsdk/IMXMsgCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$5:Ljava/lang/String;

    iput-object p6, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$6:Lcom/mi/mimsgsdk/IMXMsgCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$5:Ljava/lang/String;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;->arg$6:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->lambda$init$0$MsgManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)V

    return-void
.end method
