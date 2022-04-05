.class public final synthetic Lcom/ifengyu/intercom/lite/base/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/base/b;->a:Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/b;->a:Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    check-cast p1, Lcom/ifengyu/intercom/lite/event/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->a(Lcom/ifengyu/intercom/lite/event/b;)V

    return-void
.end method
