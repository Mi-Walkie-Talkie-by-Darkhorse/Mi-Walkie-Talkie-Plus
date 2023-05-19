.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/i1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/x1;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/x1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/i1;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/i1;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->x3(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
