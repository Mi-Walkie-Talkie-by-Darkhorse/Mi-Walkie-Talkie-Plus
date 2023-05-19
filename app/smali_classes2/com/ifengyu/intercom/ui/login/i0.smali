.class public final synthetic Lcom/ifengyu/intercom/ui/login/i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/i0;->a:Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/i0;->a:Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;->v3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
