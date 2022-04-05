.class Lcom/ifengyu/intercom/node/btle/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/btle/h;->d([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/btle/h;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 0

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/h$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const-string v2, "12345"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/h/a;->a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    return-void
.end method
