.class public final synthetic Lcom/ifengyu/intercom/l/a/b/c/f;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/f;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/f;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    check-cast p1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->y(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method