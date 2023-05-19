.class public final synthetic Lcom/ifengyu/intercom/l/b/e/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/k;->a:Lcom/ifengyu/intercom/l/b/e/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/k;->a:Lcom/ifengyu/intercom/l/b/e/u;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->F(Ljava/lang/Throwable;)V

    return-void
.end method
