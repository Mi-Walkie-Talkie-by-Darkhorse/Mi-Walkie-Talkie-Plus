.class public final synthetic Lcom/ifengyu/intercom/l/a/b/b/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/a/b/b/z;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/k;->a:Lcom/ifengyu/intercom/l/a/b/b/z;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/k;->a:Lcom/ifengyu/intercom/l/a/b/b/z;

    check-cast p1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->z3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method
