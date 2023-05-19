.class public final synthetic Lcom/ifengyu/intercom/ui/login/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/m;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    iput p2, p0, Lcom/ifengyu/intercom/ui/login/m;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/m;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    iget v1, p0, Lcom/ifengyu/intercom/ui/login/m;->b:I

    check-cast p1, Lcom/ifengyu/library/account/UserInfo;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->A3(ILcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method
