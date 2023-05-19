.class public final synthetic Lcom/ifengyu/intercom/p/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/library/b/d/a;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/library/b/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/p/g;->a:Lcom/ifengyu/library/b/d/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/p/g;->a:Lcom/ifengyu/library/b/d/a;

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/j0;->s(Lcom/ifengyu/library/b/d/a;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
