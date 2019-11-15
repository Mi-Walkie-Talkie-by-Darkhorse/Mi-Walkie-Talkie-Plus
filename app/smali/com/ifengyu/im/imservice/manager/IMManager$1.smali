.class Lcom/ifengyu/im/imservice/manager/IMManager$1;
.super Ljava/lang/Object;
.source "IMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMManager;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMManager;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    iput-object p3, p0, Lcom/ifengyu/im/imservice/manager/IMManager$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMManager$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/callback/Packetlistener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
