.class public final synthetic Lcom/ifengyu/intercom/l/a/b/c/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/a/b/c/u;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/r;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/r;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->o(Ljava/lang/Throwable;)V

    return-void
.end method
