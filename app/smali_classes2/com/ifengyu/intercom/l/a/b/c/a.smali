.class public final synthetic Lcom/ifengyu/intercom/l/a/b/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/a/b/c/u;

.field public final synthetic b:Lcom/ifengyu/intercom/models/ConfigFileModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/a/b/c/u;Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/c/a;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/a/b/c/a;->b:Lcom/ifengyu/intercom/models/ConfigFileModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/c/a;->a:Lcom/ifengyu/intercom/l/a/b/c/u;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/c/a;->b:Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/b/c/u;->E(Lcom/ifengyu/intercom/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
