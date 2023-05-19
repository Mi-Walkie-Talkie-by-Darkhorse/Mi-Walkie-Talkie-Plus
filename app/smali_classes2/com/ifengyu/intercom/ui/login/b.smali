.class public final synthetic Lcom/ifengyu/intercom/ui/login/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/b;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/login/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/login/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/b;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/b;->c:Ljava/lang/String;

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->F3(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
