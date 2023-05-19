.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/g;->b:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->R(I)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
