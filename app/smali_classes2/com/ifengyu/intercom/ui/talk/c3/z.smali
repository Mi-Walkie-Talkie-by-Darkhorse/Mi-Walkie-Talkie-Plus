.class public final synthetic Lcom/ifengyu/intercom/ui/talk/c3/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/z;->a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/z;->a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->b0(Ljava/util/List;)Ljava/util/List;

    return-object p1
.end method
