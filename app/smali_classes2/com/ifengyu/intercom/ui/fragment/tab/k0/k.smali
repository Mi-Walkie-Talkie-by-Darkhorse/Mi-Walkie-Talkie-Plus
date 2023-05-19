.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/k;->a:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/k;->a:I

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->b0(I)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
