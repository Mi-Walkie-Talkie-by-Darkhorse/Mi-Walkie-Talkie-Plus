.class public final synthetic Lcom/ifengyu/intercom/l/b/c/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/v1;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w0;->a:Lcom/ifengyu/intercom/l/b/c/v1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w0;->a:Lcom/ifengyu/intercom/l/b/c/v1;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->r3(Ljava/util/List;)V

    return-void
.end method
