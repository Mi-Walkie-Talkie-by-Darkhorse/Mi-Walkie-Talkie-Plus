.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/d;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/d;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->q0(Ljava/lang/Boolean;)V

    return-void
.end method
