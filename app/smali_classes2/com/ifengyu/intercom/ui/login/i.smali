.class public final synthetic Lcom/ifengyu/intercom/ui/login/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/login/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/i;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/i;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->D3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method
