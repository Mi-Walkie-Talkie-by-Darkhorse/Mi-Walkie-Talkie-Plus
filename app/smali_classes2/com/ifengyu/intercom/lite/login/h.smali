.class public final synthetic Lcom/ifengyu/intercom/lite/login/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/login/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/h;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/h;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method
