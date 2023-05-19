.class public final synthetic Lcom/ifengyu/intercom/device/lite/e/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/e/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/j;->a:Lcom/ifengyu/intercom/device/lite/e/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/j;->a:Lcom/ifengyu/intercom/device/lite/e/l;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->s(Ljava/util/LinkedList;)V

    return-void
.end method
