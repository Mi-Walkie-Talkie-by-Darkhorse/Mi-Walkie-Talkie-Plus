.class public final synthetic Lcom/ifengyu/talk/f/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/talk/f/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/talk/f/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/k;->a:Lcom/ifengyu/talk/f/e0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/talk/f/k;->a:Lcom/ifengyu/talk/f/e0;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/f/e0;->n(Ljava/util/List;)V

    return-void
.end method