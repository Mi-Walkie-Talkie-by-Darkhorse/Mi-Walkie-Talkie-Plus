.class public final synthetic Lcom/ifengyu/intercom/ui/login/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/y;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/y;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->N3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
