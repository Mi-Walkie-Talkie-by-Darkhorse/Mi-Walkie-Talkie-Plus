.class public final synthetic Lcom/ifengyu/intercom/ui/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/c/e;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/a;->a:Lcom/ifengyu/intercom/ui/c/e;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/a;->a:Lcom/ifengyu/intercom/ui/c/e;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/c/e;->i(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
