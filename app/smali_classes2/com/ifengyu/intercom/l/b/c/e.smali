.class public final synthetic Lcom/ifengyu/intercom/l/b/c/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/l1;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/e;->a:Lcom/ifengyu/intercom/l/b/c/l1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/e;->a:Lcom/ifengyu/intercom/l/b/c/l1;

    check-cast p1, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/b/c/l1;->C3(Lcom/ifengyu/intercom/l/b/c/l1;Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    return-void
.end method
