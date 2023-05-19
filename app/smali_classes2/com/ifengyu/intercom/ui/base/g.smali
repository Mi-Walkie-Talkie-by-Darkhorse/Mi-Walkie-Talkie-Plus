.class public final synthetic Lcom/ifengyu/intercom/ui/base/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

.field public final synthetic b:Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/g;->a:Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/base/g;->b:Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/g;->a:Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/g;->b:Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->E(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;Ljava/lang/Long;)V

    return-void
.end method
