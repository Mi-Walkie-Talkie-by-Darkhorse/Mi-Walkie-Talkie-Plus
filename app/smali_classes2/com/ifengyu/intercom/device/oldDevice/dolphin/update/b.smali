.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;->b:Z

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->m(ZLjava/util/HashMap;)V

    return-void
.end method
