.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/r;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/r;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->j3()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
