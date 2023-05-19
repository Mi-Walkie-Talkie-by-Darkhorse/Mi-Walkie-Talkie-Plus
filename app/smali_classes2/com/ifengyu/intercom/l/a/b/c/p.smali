.class public final synthetic Lcom/ifengyu/intercom/l/a/b/c/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/a/b/c/u;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/a/b/c/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/p;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/p;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    check-cast p1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->J(Lcom/ifengyu/intercom/models/ConfigFileModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
