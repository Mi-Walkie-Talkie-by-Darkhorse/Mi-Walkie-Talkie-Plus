.class Lcom/ifengyu/intercom/node/btle/i$1;
.super Ljava/lang/Object;
.source "DataSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/btle/i;->d([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/ifengyu/intercom/node/btle/i;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/btle/i;[B)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i$1;->b:Lcom/ifengyu/intercom/node/btle/i;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/i$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i$1;->b:Lcom/ifengyu/intercom/node/btle/i;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/i$1;->a:[B

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/btle/i;->a(Lcom/ifengyu/intercom/node/btle/i;[B)V

    return-void
.end method
