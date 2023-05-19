.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/j;->b:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->a0(ILjava/util/ArrayList;)V

    return-void
.end method
