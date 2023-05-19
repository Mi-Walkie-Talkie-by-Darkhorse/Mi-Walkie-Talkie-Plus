.class public final synthetic Lcom/ifengyu/intercom/l/b/c/x1/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/x1/j;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/x1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/b;->a:Lcom/ifengyu/intercom/l/b/c/x1/j;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/b;->a:Lcom/ifengyu/intercom/l/b/c/x1/j;

    check-cast p1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/j;->k3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method
