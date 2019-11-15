.class Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;
.super Ljava/lang/Object;
.source "ListenerQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/callback/ListenerQueue;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/callback/ListenerQueue;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/callback/ListenerQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;->this$0:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;->this$0:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->access$000(Lcom/ifengyu/im/imservice/callback/ListenerQueue;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;->this$0:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->access$102(Lcom/ifengyu/im/imservice/callback/ListenerQueue;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;->this$0:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->access$200(Lcom/ifengyu/im/imservice/callback/ListenerQueue;)V

    return-void
.end method
