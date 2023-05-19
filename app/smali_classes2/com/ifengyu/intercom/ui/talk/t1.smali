.class public final synthetic Lcom/ifengyu/intercom/ui/talk/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/t1;->a:Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/t1;->a:Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;

    check-cast p1, Lcom/ifengyu/talk/http/entity/MsgListEntity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->l3(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;Lcom/ifengyu/talk/http/entity/MsgListEntity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
