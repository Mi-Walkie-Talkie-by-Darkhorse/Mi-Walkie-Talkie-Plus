.class public final synthetic Lcom/ifengyu/intercom/ui/login/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/login/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/q;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/q;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->t3()V

    return-void
.end method