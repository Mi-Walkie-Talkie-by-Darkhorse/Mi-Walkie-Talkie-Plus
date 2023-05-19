.class public final synthetic Lcom/ifengyu/intercom/l/b/c/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/t1;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/p;->a:Lcom/ifengyu/intercom/l/b/c/t1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/p;->a:Lcom/ifengyu/intercom/l/b/c/t1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->t3(Ljava/lang/Integer;)V

    return-void
.end method
