.class Lcom/ifengyu/intercom/node/btle/h$2;
.super Ljava/lang/Object;
.source "DataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/btle/h;->f([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

.field final synthetic b:Lcom/ifengyu/intercom/node/btle/h;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/btle/h;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h$2;->b:Lcom/ifengyu/intercom/node/btle/h;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/h$2;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v0

    const-string v1, "12345"

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h$2;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/update/a;->a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    return-void
.end method
