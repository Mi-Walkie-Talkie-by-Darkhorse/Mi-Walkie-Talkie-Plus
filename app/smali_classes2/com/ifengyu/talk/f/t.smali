.class public final synthetic Lcom/ifengyu/talk/f/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/talk/f/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/talk/f/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/t;->a:Lcom/ifengyu/talk/f/e0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/talk/f/t;->a:Lcom/ifengyu/talk/f/e0;

    check-cast p1, Lcom/ifengyu/talk/http/entity/LastMsgForGroups;

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/f/e0;->y(Lcom/ifengyu/talk/http/entity/LastMsgForGroups;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
